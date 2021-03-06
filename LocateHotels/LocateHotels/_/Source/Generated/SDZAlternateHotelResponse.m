/*
	SDZAlternateHotelResponse.h
	The implementation of properties and methods for the SDZAlternateHotelResponse object.
	Generated by SudzC.com
*/
#import "SDZAlternateHotelResponse.h"

#import "SDZHotelInfo.h"
#import "SDZAmenities.h"
#import "SDZLowestRateInfo.h"
@implementation SDZAlternateHotelResponse
	@synthesize HotelInfo = _HotelInfo;
	@synthesize Amenities = _Amenities;
	@synthesize LowestRateInfo = _LowestRateInfo;

	- (id) init
	{
		if(self = [super init])
		{
			self.HotelInfo = nil; // [[SDZHotelInfo alloc] init];
			self.Amenities = nil; // [[SDZAmenities alloc] init];
			self.LowestRateInfo = nil; // [[SDZLowestRateInfo alloc] init];

		}
		return self;
	}

	+ (SDZAlternateHotelResponse*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZAlternateHotelResponse*)[[[SDZAlternateHotelResponse alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.HotelInfo = [[SDZHotelInfo createWithNode: [Soap getNode: node withName: @"HotelInfo"]] object];
			self.Amenities = [[SDZAmenities createWithNode: [Soap getNode: node withName: @"Amenities"]] object];
			self.LowestRateInfo = [[SDZLowestRateInfo createWithNode: [Soap getNode: node withName: @"LowestRateInfo"]] object];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"AlternateHotelResponse"];
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
		if (self.HotelInfo != nil) [s appendString: [self.HotelInfo serialize: @"HotelInfo"]];
		if (self.Amenities != nil) [s appendString: [self.Amenities serialize: @"Amenities"]];
		if (self.LowestRateInfo != nil) [s appendString: [self.LowestRateInfo serialize: @"LowestRateInfo"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZAlternateHotelResponse class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.HotelInfo = nil;
		self.Amenities = nil;
		self.LowestRateInfo = nil;
		[super dealloc];
	}

@end
