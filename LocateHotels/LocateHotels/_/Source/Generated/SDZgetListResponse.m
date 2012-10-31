/*
	SDZgetListResponse.h
	The implementation of properties and methods for the SDZgetListResponse object.
	Generated by SudzC.com
*/
#import "SDZgetListResponse.h"

#import "SDZHotelListResponse.h"
@implementation SDZgetListResponse
	@synthesize HotelListResponse = _HotelListResponse;

	- (id) init
	{
		if(self = [super init])
		{
			self.HotelListResponse = nil; // [[SDZHotelListResponse alloc] init];

		}
		return self;
	}

	+ (SDZgetListResponse*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZgetListResponse*)[[[SDZgetListResponse alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.HotelListResponse = [[SDZHotelListResponse createWithNode: [Soap getNode: node withName: @"HotelListResponse"]] object];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"getListResponse"];
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
		if (self.HotelListResponse != nil) [s appendString: [self.HotelListResponse serialize: @"HotelListResponse"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZgetListResponse class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.HotelListResponse = nil;
		[super dealloc];
	}

@end