//
//  GDRViewController.h
//  LocateHotels
//
//  Created by Saurabh Kumar Singh on 10/29/12.
//  Copyright (c) 2012 Saurabh Kumar Singh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import "GDRHotelDetailsViewController.h"

@interface GDRViewController : UIViewController  <UITableViewDelegate, UITableViewDataSource,CLLocationManagerDelegate>


@property (weak, nonatomic) IBOutlet UITextField *searchQueryField;

@property (weak, nonatomic) IBOutlet UITableView *tableView;


@property (nonatomic)  CLLocationManager *locationManager;

@property (nonatomic)  NSArray * hotelSummary;


@property (weak, nonatomic) IBOutlet UISwitch *locationBasedSearchSwitch;


- (IBAction)nearMyLocationFlag:(id)sender;


- (IBAction)searchForHotels:(id)sender;

@end
