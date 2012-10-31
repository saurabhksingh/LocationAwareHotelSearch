/*
	SDZaddressInfo.h
	The implementation of properties and methods for the SDZaddressInfo object.
	Generated by SudzC.com
*/
#import "SDZaddressInfo.h"

@implementation SDZaddressInfo
	@synthesize address1 = _address1;
	@synthesize address2 = _address2;
	@synthesize address3 = _address3;
	@synthesize city = _city;
	@synthesize stateProvinceCode = _stateProvinceCode;
	@synthesize countryCode = _countryCode;
	@synthesize postalCode = _postalCode;

	- (id) init
	{
		if(self = [super init])
		{
			self.address1 = nil;
			self.address2 = nil;
			self.address3 = nil;
			self.city = nil;
			self.stateProvinceCode = nil;
			self.countryCode = nil;
			self.postalCode = nil;

		}
		return self;
	}

	+ (SDZaddressInfo*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZaddressInfo*)[[[SDZaddressInfo alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.address1 = [Soap getNodeValue: node withName: @"address1"];
			self.address2 = [Soap getNodeValue: node withName: @"address2"];
			self.address3 = [Soap getNodeValue: node withName: @"address3"];
			self.city = [Soap getNodeValue: node withName: @"city"];
			self.stateProvinceCode = [Soap getNodeValue: node withName: @"stateProvinceCode"];
			self.countryCode = [Soap getNodeValue: node withName: @"countryCode"];
			self.postalCode = [Soap getNodeValue: node withName: @"postalCode"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"addressInfo"];
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
		if (self.address1 != nil) [s appendFormat: @"<address1>%@</address1>", [[self.address1 stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.address2 != nil) [s appendFormat: @"<address2>%@</address2>", [[self.address2 stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.address3 != nil) [s appendFormat: @"<address3>%@</address3>", [[self.address3 stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.city != nil) [s appendFormat: @"<city>%@</city>", [[self.city stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.stateProvinceCode != nil) [s appendFormat: @"<stateProvinceCode>%@</stateProvinceCode>", [[self.stateProvinceCode stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.countryCode != nil) [s appendFormat: @"<countryCode>%@</countryCode>", [[self.countryCode stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.postalCode != nil) [s appendFormat: @"<postalCode>%@</postalCode>", [[self.postalCode stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZaddressInfo class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.address1 = nil;
		self.address2 = nil;
		self.address3 = nil;
		self.city = nil;
		self.stateProvinceCode = nil;
		self.countryCode = nil;
		self.postalCode = nil;
		[super dealloc];
	}

@end