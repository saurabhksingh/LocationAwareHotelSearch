//
//  GDRViewController.m
//  LocateHotels
//
//  Created by Saurabh Kumar Singh on 10/29/12.
//  Copyright (c) 2012 Saurabh Kumar Singh. All rights reserved.
//

#import "GDRViewController.h"

@interface GDRViewController ()


@end

@implementation GDRViewController

@synthesize searchQueryField;
@synthesize tableView;
@synthesize locationBasedSearchSwitch;
@synthesize locationManager;
@synthesize hotelSummary;

- (void)viewDidLoad
{
    locationManager = [[CLLocationManager alloc] init];
    locationManager.distanceFilter = kCLDistanceFilterNone;
    locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;
    [locationManager startUpdatingLocation];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (NSString *)deviceLocation {
    NSString *theLocation = [NSString stringWithFormat:@"latitude: %f longitude: %f", locationManager.location.coordinate.latitude, locationManager.location.coordinate.longitude];
    return theLocation;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setSearchQueryField:nil];
    [self setTableView:nil];
    [self setLocationBasedSearchSwitch:nil];
    [self setLocationBasedSearchSwitch:nil];
    [self setLocationBasedSearchSwitch:nil];
    [self setLocationBasedSearchSwitch:nil];
    [super viewDidUnload];
}
- (IBAction)nearMyLocationFlag:(id)sender {
    
    searchQueryField.enabled = !locationBasedSearchSwitch.on;
}

- (void)touchesBegan:(NSSet*)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    [[self nextResponder] touchesBegan:touches withEvent:event];
}


- (void)touchesEnded:(NSSet*)touches withEvent:(UIEvent *)event
{
    [super touchesEnded:touches withEvent:event];
    [[self nextResponder] touchesEnded:touches withEvent:event];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1; // 1 = number of sections
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [hotelSummary count];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    //UINavigationController *navigationController = [[UINavigationController alloc] init];
    //[self.view addSubview:navigationController.view];
    
    //GDRHotelDetailsViewController *detailViewController = [[GDRHotelDetailsViewController alloc] initWithNibName:@"GDRHotelDetailsViewController" bundle:nil];
    
    //detailViewController.data = (NSDictionary *)[hotelSummary objectAtIndex:indexPath.row];
    
   // [navigationController pushViewController:detailViewController animated:YES];
    
    NSLog(@"hotel name is : %@", (NSString *)[[hotelSummary objectAtIndex:indexPath.row] objectForKey:@"name"]);
    
    NSDictionary *hotelData = (NSDictionary *)[hotelSummary objectAtIndex:indexPath.row];
    NSString * message = @"Hotel Name : ";
    message = [message stringByAppendingString:(NSString *)[hotelData objectForKey:@"name"]];
    message = [message stringByAppendingString:@"\nState Province Code : "];
    message = [message stringByAppendingString:(NSString *)[hotelData objectForKey:@"stateProvinceCode"]];
    message = [message stringByAppendingString:@"\nAddress : "];
    message = [message stringByAppendingString:(NSString *)[hotelData objectForKey:@"address1"]];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hotel Details" message:message delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alert show];
   // [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    NSString * hotelSummaryText = (NSString *)[[hotelSummary objectAtIndex:indexPath.row] objectForKey:@"name"];
    NSString * rating = @"     Trip Advisor : ";
    NSNumber *ratingNumber = (NSNumber *)[[hotelSummary objectAtIndex:indexPath.row] objectForKey:@"tripAdvisorRating"];
    NSString *ratingNumber2 = [NSString stringWithFormat:@"%d", [ratingNumber intValue]];
    rating = [rating stringByAppendingString:ratingNumber2];
    
    cell.textLabel.text = [hotelSummaryText stringByAppendingString:rating];
    
    
    
    
    NSString *thumbNailUrl = @"http://www.hotels.com";
    thumbNailUrl = [thumbNailUrl stringByAppendingString:(NSString *)[[hotelSummary objectAtIndex:indexPath.row] objectForKey:@"thumbNailUrl"]];
    NSLog(@"Image URL is %@",thumbNailUrl);
    NSData* imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString: thumbNailUrl]];
    //UIImage *cellImage = [UIImage imageNamed:thumbNailUrl];
    cell.imageView.image = [UIImage imageWithData:imageData];//cellImage;
    
    
    return cell;
    
}


- (IBAction)searchForHotels:(id)sender {
    if(locationBasedSearchSwitch.on)
    {
        NSString *theLocation = [NSString stringWithFormat:@"http://api.ean.com/ean-services/rs/hotel/v3/list?cid=55505&apiKey=hrqffx7ssvkvbpkkkpw32h58&supplierCacheTolerance=MED&arrivalDate=09/04/2013&departureDate=09/05/2013&latitude=%f&longitude=%f", locationManager.location.coordinate.latitude, locationManager.location.coordinate.longitude];

        NSURL *url = [NSURL URLWithString:theLocation];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSHTTPURLResponse *response = nil;
        NSError *error = nil;
        
        NSData *responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
        
        if (error != nil) {
            NSLog(@"%@", [error localizedDescription]);
        }
        else{
            NSDictionary* json = [NSJSONSerialization
                                  JSONObjectWithData:responseData
                                  options:kNilOptions 
                                  error:&error];
            
            NSArray* hotelListResponse = [json objectForKey:@"HotelListResponse"];
            NSArray *keys = [json allKeys];
            int resultSize = [hotelListResponse count];
            json = [json objectForKey:@"HotelListResponse"];
            keys = [json allKeys];
            json = [json objectForKey:@"HotelList"];
            hotelSummary = [json objectForKey:@"HotelSummary"];
            [tableView reloadData];
        }
    }
}
@end
