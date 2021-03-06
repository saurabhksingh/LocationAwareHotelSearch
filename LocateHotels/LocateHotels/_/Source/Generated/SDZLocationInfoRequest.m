/*
	SDZLocationInfoRequest.h
	The implementation of properties and methods for the SDZLocationInfoRequest object.
	Generated by SudzC.com
*/
#import "SDZLocationInfoRequest.h"

@implementation SDZLocationInfoRequest
	@synthesize address = _address;
	@synthesize city = _city;
	@synthesize stateProvinceCode = _stateProvinceCode;
	@synthesize countryCode = _countryCode;
	@synthesize postalCode = _postalCode;
	@synthesize destinationString = _destinationString;
	@synthesize destinationId = _destinationId;
	@synthesize ignoreSearchWeight = _ignoreSearchWeight;
	@synthesize useGeocoder = _useGeocoder;
	@synthesize type = _type;

	- (id) init
	{
		if(self = [super init])
		{
			self.address = nil;
			self.city = nil;
			self.stateProvinceCode = nil;
			self.countryCode = nil;
			self.postalCode = nil;
			self.destinationString = nil;
			self.destinationId = nil;
			self.type = nil;

		}
		return self;
	}

	+ (SDZLocationInfoRequest*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZLocationInfoRequest*)[[[SDZLocationInfoRequest alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.address = [Soap getNodeValue: node withName: @"address"];
			self.city = [Soap getNodeValue: node withName: @"city"];
			self.stateProvinceCode = [Soap getNodeValue: node withName: @"stateProvinceCode"];
			self.countryCode = [Soap getNodeValue: node withName: @"countryCode"];
			self.postalCode = [Soap getNodeValue: node withName: @"postalCode"];
			self.destinationString = [Soap getNodeValue: node withName: @"destinationString"];
			self.destinationId = [Soap getNodeValue: node withName: @"destinationId"];
			self.ignoreSearchWeight = [[Soap getNodeValue: node withName: @"ignoreSearchWeight"] boolValue];
			self.useGeocoder = [[Soap getNodeValue: node withName: @"useGeocoder"] boolValue];
			self.type = [Soap getNodeValue: node withName: @"type"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"LocationInfoRequest"];
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
		if (self.address != nil) [s appendFormat: @"<address>%@</address>", [[self.address stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.city != nil) [s appendFormat: @"<city>%@</city>", [[self.city stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.stateProvinceCode != nil) [s appendFormat: @"<stateProvinceCode>%@</stateProvinceCode>", [[self.stateProvinceCode stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.countryCode != nil) [s appendFormat: @"<countryCode>%@</countryCode>", [[self.countryCode stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.postalCode != nil) [s appendFormat: @"<postalCode>%@</postalCode>", [[self.postalCode stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.destinationString != nil) [s appendFormat: @"<destinationString>%@</destinationString>", [[self.destinationString stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.destinationId != nil) [s appendFormat: @"<destinationId>%@</destinationId>", [[self.destinationId stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<ignoreSearchWeight>%@</ignoreSearchWeight>", (self.ignoreSearchWeight)?@"true":@"false"];
		[s appendFormat: @"<useGeocoder>%@</useGeocoder>", (self.useGeocoder)?@"true":@"false"];
		if (self.type != nil) [s appendFormat: @"<type>%@</type>", [[self.type stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZLocationInfoRequest class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.address = nil;
		self.city = nil;
		self.stateProvinceCode = nil;
		self.countryCode = nil;
		self.postalCode = nil;
		self.destinationString = nil;
		self.destinationId = nil;
		self.type = nil;
		[super dealloc];
	}

@end
