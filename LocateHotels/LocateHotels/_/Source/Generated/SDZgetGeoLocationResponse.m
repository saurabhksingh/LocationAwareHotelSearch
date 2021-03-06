/*
	SDZgetGeoLocationResponse.h
	The implementation of properties and methods for the SDZgetGeoLocationResponse object.
	Generated by SudzC.com
*/
#import "SDZgetGeoLocationResponse.h"

#import "SDZLocationInfoResponse.h"
@implementation SDZgetGeoLocationResponse
	@synthesize LocationInfoResponse = _LocationInfoResponse;

	- (id) init
	{
		if(self = [super init])
		{
			self.LocationInfoResponse = nil; // [[SDZLocationInfoResponse alloc] init];

		}
		return self;
	}

	+ (SDZgetGeoLocationResponse*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZgetGeoLocationResponse*)[[[SDZgetGeoLocationResponse alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.LocationInfoResponse = [[SDZLocationInfoResponse createWithNode: [Soap getNode: node withName: @"LocationInfoResponse"]] object];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"getGeoLocationResponse"];
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
		if (self.LocationInfoResponse != nil) [s appendString: [self.LocationInfoResponse serialize: @"LocationInfoResponse"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZgetGeoLocationResponse class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.LocationInfoResponse = nil;
		[super dealloc];
	}

@end
