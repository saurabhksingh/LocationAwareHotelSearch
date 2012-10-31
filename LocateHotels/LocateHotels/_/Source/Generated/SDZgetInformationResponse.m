/*
	SDZgetInformationResponse.h
	The implementation of properties and methods for the SDZgetInformationResponse object.
	Generated by SudzC.com
*/
#import "SDZgetInformationResponse.h"

#import "SDZHotelInformationResponse.h"
@implementation SDZgetInformationResponse
	@synthesize HotelInformationResponse = _HotelInformationResponse;

	- (id) init
	{
		if(self = [super init])
		{
			self.HotelInformationResponse = nil; // [[SDZHotelInformationResponse alloc] init];

		}
		return self;
	}

	+ (SDZgetInformationResponse*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZgetInformationResponse*)[[[SDZgetInformationResponse alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.HotelInformationResponse = [[SDZHotelInformationResponse createWithNode: [Soap getNode: node withName: @"HotelInformationResponse"]] object];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"getInformationResponse"];
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
		if (self.HotelInformationResponse != nil) [s appendString: [self.HotelInformationResponse serialize: @"HotelInformationResponse"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZgetInformationResponse class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.HotelInformationResponse = nil;
		[super dealloc];
	}

@end
