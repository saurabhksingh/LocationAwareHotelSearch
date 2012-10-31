/*
	SDZgetItineraryResponse.h
	The implementation of properties and methods for the SDZgetItineraryResponse object.
	Generated by SudzC.com
*/
#import "SDZgetItineraryResponse.h"

#import "SDZHotelItineraryResponse.h"
@implementation SDZgetItineraryResponse
	@synthesize HotelItineraryResponse = _HotelItineraryResponse;

	- (id) init
	{
		if(self = [super init])
		{
			self.HotelItineraryResponse = nil; // [[SDZHotelItineraryResponse alloc] init];

		}
		return self;
	}

	+ (SDZgetItineraryResponse*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZgetItineraryResponse*)[[[SDZgetItineraryResponse alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.HotelItineraryResponse = [[SDZHotelItineraryResponse createWithNode: [Soap getNode: node withName: @"HotelItineraryResponse"]] object];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"getItineraryResponse"];
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
		if (self.HotelItineraryResponse != nil) [s appendString: [self.HotelItineraryResponse serialize: @"HotelItineraryResponse"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZgetItineraryResponse class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.HotelItineraryResponse = nil;
		[super dealloc];
	}

@end
