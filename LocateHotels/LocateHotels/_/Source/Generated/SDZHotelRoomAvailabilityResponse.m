/*
	SDZHotelRoomAvailabilityResponse.h
	The implementation of properties and methods for the SDZHotelRoomAvailabilityResponse object.
	Generated by SudzC.com
*/
#import "SDZHotelRoomAvailabilityResponse.h"

#import "SDZCouponInformationResponse.h"
#import "SDZHotelRoomResponse.h"
#import "SDZHotelDetails.h"
#import "SDZPropertyAmenities.h"
#import "SDZHotelImages.h"
@implementation SDZHotelRoomAvailabilityResponse
	@synthesize hotelId = _hotelId;
	@synthesize arrivalDate = _arrivalDate;
	@synthesize departureDate = _departureDate;
	@synthesize hotelName = _hotelName;
	@synthesize hotelAddress = _hotelAddress;
	@synthesize hotelCity = _hotelCity;
	@synthesize hotelStateProvince = _hotelStateProvince;
	@synthesize hotelCountry = _hotelCountry;
	@synthesize numberOfRoomsRequested = _numberOfRoomsRequested;
	@synthesize checkInInstructions = _checkInInstructions;
	@synthesize tripAdvisorRating = _tripAdvisorRating;
	@synthesize tripAdvisorReviewCount = _tripAdvisorReviewCount;
	@synthesize tripAdvisorRatingUrl = _tripAdvisorRatingUrl;
	@synthesize rateKey = _rateKey;
	@synthesize CouponInformationResponse = _CouponInformationResponse;
	@synthesize HotelRoomResponse = _HotelRoomResponse;
	@synthesize HotelDetails = _HotelDetails;
	@synthesize PropertyAmenities = _PropertyAmenities;
	@synthesize HotelImages = _HotelImages;
	@synthesize size = _size;

	- (id) init
	{
		if(self = [super init])
		{
			self.arrivalDate = nil;
			self.departureDate = nil;
			self.hotelName = nil;
			self.hotelAddress = nil;
			self.hotelCity = nil;
			self.hotelStateProvince = nil;
			self.hotelCountry = nil;
			self.checkInInstructions = nil;
			self.tripAdvisorRating = nil;
			self.tripAdvisorRatingUrl = nil;
			self.rateKey = nil;
			self.CouponInformationResponse = nil; // [[SDZCouponInformationResponse alloc] init];
			self.HotelRoomResponse = nil; // [[SDZHotelRoomResponse alloc] init];
			self.HotelDetails = nil; // [[SDZHotelDetails alloc] init];
			self.PropertyAmenities = [[[NSMutableArray alloc] init] autorelease];
			self.HotelImages = [[[NSMutableArray alloc] init] autorelease];

		}
		return self;
	}

	+ (SDZHotelRoomAvailabilityResponse*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZHotelRoomAvailabilityResponse*)[[[SDZHotelRoomAvailabilityResponse alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.hotelId = [[Soap getNodeValue: node withName: @"hotelId"] longLongValue];
			self.arrivalDate = [Soap getNodeValue: node withName: @"arrivalDate"];
			self.departureDate = [Soap getNodeValue: node withName: @"departureDate"];
			self.hotelName = [Soap getNodeValue: node withName: @"hotelName"];
			self.hotelAddress = [Soap getNodeValue: node withName: @"hotelAddress"];
			self.hotelCity = [Soap getNodeValue: node withName: @"hotelCity"];
			self.hotelStateProvince = [Soap getNodeValue: node withName: @"hotelStateProvince"];
			self.hotelCountry = [Soap getNodeValue: node withName: @"hotelCountry"];
			self.numberOfRoomsRequested = [[Soap getNodeValue: node withName: @"numberOfRoomsRequested"] intValue];
			self.checkInInstructions = [Soap getNodeValue: node withName: @"checkInInstructions"];
			self.tripAdvisorRating = [Soap getNodeValue: node withName: @"tripAdvisorRating"];
			self.tripAdvisorReviewCount = [[Soap getNodeValue: node withName: @"tripAdvisorReviewCount"] intValue];
			self.tripAdvisorRatingUrl = [Soap getNodeValue: node withName: @"tripAdvisorRatingUrl"];
			self.rateKey = [Soap getNodeValue: node withName: @"rateKey"];
			self.CouponInformationResponse = [[SDZCouponInformationResponse createWithNode: [Soap getNode: node withName: @"CouponInformationResponse"]] object];
			self.HotelRoomResponse = [[SDZHotelRoomResponse createWithNode: [Soap getNode: node withName: @"HotelRoomResponse"]] object];
			self.HotelDetails = [[SDZHotelDetails createWithNode: [Soap getNode: node withName: @"HotelDetails"]] object];
			self.PropertyAmenities = [[SDZPropertyAmenities createWithNode: [Soap getNode: node withName: @"PropertyAmenities"]] object];
			self.HotelImages = [[SDZHotelImages createWithNode: [Soap getNode: node withName: @"HotelImages"]] object];
			self.size = [[Soap getNodeValue: node withName: @"size"] intValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"HotelRoomAvailabilityResponse"];
	}
  
	- (NSMutableString*) serialize: (NSString*) nodeName
	{
		NSMutableString* s = [NSMutableString string];
		[s appendFormat: @"<%@", nodeName];
		[s appendString: [self serializeAttributes]];
		[s appendString: @">"];
		[s appendString: [self serializeElements]];
		[s appendFormat: @"</%@>", nodeName];
		return s;
	}
	
	- (NSMutableString*) serializeElements
	{
		NSMutableString* s = [super serializeElements];
		[s appendFormat: @"<hotelId>%@</hotelId>", [NSString stringWithFormat: @"%ld", self.hotelId]];
		if (self.arrivalDate != nil) [s appendFormat: @"<arrivalDate>%@</arrivalDate>", [[self.arrivalDate stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.departureDate != nil) [s appendFormat: @"<departureDate>%@</departureDate>", [[self.departureDate stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.hotelName != nil) [s appendFormat: @"<hotelName>%@</hotelName>", [[self.hotelName stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.hotelAddress != nil) [s appendFormat: @"<hotelAddress>%@</hotelAddress>", [[self.hotelAddress stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.hotelCity != nil) [s appendFormat: @"<hotelCity>%@</hotelCity>", [[self.hotelCity stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.hotelStateProvince != nil) [s appendFormat: @"<hotelStateProvince>%@</hotelStateProvince>", [[self.hotelStateProvince stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.hotelCountry != nil) [s appendFormat: @"<hotelCountry>%@</hotelCountry>", [[self.hotelCountry stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<numberOfRoomsRequested>%@</numberOfRoomsRequested>", [NSString stringWithFormat: @"%i", self.numberOfRoomsRequested]];
		if (self.checkInInstructions != nil) [s appendFormat: @"<checkInInstructions>%@</checkInInstructions>", [[self.checkInInstructions stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.tripAdvisorRating != nil) [s appendFormat: @"<tripAdvisorRating>%@</tripAdvisorRating>", [[self.tripAdvisorRating stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<tripAdvisorReviewCount>%@</tripAdvisorReviewCount>", [NSString stringWithFormat: @"%i", self.tripAdvisorReviewCount]];
		if (self.tripAdvisorRatingUrl != nil) [s appendFormat: @"<tripAdvisorRatingUrl>%@</tripAdvisorRatingUrl>", [[self.tripAdvisorRatingUrl stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.rateKey != nil) [s appendFormat: @"<rateKey>%@</rateKey>", [[self.rateKey stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.CouponInformationResponse != nil) [s appendString: [self.CouponInformationResponse serialize: @"CouponInformationResponse"]];
		if (self.HotelRoomResponse != nil) [s appendString: [self.HotelRoomResponse serialize: @"HotelRoomResponse"]];
		if (self.HotelDetails != nil) [s appendString: [self.HotelDetails serialize: @"HotelDetails"]];
		if (self.PropertyAmenities != nil && self.PropertyAmenities.count > 0) {
			[s appendFormat: @"<PropertyAmenities>%@</PropertyAmenities>", [SDZPropertyAmenities serialize: self.PropertyAmenities]];
		} else {
			[s appendString: @"<PropertyAmenities/>"];
		}
		if (self.HotelImages != nil && self.HotelImages.count > 0) {
			[s appendFormat: @"<HotelImages>%@</HotelImages>", [SDZHotelImages serialize: self.HotelImages]];
		} else {
			[s appendString: @"<HotelImages/>"];
		}

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];
		[s appendFormat: @" size=\"%@\"", [NSString stringWithFormat: @"%i", self.size]];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZHotelRoomAvailabilityResponse class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.arrivalDate = nil;
		self.departureDate = nil;
		self.hotelName = nil;
		self.hotelAddress = nil;
		self.hotelCity = nil;
		self.hotelStateProvince = nil;
		self.hotelCountry = nil;
		self.checkInInstructions = nil;
		self.tripAdvisorRating = nil;
		self.tripAdvisorRatingUrl = nil;
		self.rateKey = nil;
		self.CouponInformationResponse = nil;
		self.HotelRoomResponse = nil;
		self.HotelDetails = nil;
		self.PropertyAmenities = nil;
		self.HotelImages = nil;
		[super dealloc];
	}

@end
