/*
	SDZRoom.h
	The implementation of properties and methods for the SDZRoom object.
	Generated by SudzC.com
*/
#import "SDZRoom.h"

@implementation SDZRoom
	@synthesize numberOfAdults = _numberOfAdults;
	@synthesize numberOfChildren = _numberOfChildren;
	@synthesize childAges = _childAges;
	@synthesize firstName = _firstName;
	@synthesize lastName = _lastName;
	@synthesize bedTypeId = _bedTypeId;
	@synthesize bedTypeDescription = _bedTypeDescription;
	@synthesize numberOfBeds = _numberOfBeds;
	@synthesize smokingPreference = _smokingPreference;
	@synthesize roomTypeCode = _roomTypeCode;
	@synthesize rateCode = _rateCode;
	@synthesize rateKey = _rateKey;
	@synthesize roomDescription = _roomDescription;
	@synthesize chargeableRate = _chargeableRate;

	- (id) init
	{
		if(self = [super init])
		{
			self.firstName = nil;
			self.lastName = nil;
			self.bedTypeId = nil;
			self.bedTypeDescription = nil;
			self.smokingPreference = nil;
			self.roomTypeCode = nil;
			self.rateCode = nil;
			self.rateKey = nil;
			self.roomDescription = nil;

		}
		return self;
	}

	+ (SDZRoom*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZRoom*)[[[SDZRoom alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.numberOfAdults = [[Soap getNodeValue: node withName: @"numberOfAdults"] intValue];
			self.numberOfChildren = [[Soap getNodeValue: node withName: @"numberOfChildren"] intValue];
			self.childAges = [[Soap getNodeValue: node withName: @"childAges"] intValue];
			self.firstName = [Soap getNodeValue: node withName: @"firstName"];
			self.lastName = [Soap getNodeValue: node withName: @"lastName"];
			self.bedTypeId = [Soap getNodeValue: node withName: @"bedTypeId"];
			self.bedTypeDescription = [Soap getNodeValue: node withName: @"bedTypeDescription"];
			self.numberOfBeds = [[Soap getNodeValue: node withName: @"numberOfBeds"] intValue];
			self.smokingPreference = [Soap getNodeValue: node withName: @"smokingPreference"];
			self.roomTypeCode = [Soap getNodeValue: node withName: @"roomTypeCode"];
			self.rateCode = [Soap getNodeValue: node withName: @"rateCode"];
			self.rateKey = [Soap getNodeValue: node withName: @"rateKey"];
			self.roomDescription = [Soap getNodeValue: node withName: @"roomDescription"];
			self.chargeableRate = [[Soap getNodeValue: node withName: @"chargeableRate"] floatValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"Room"];
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
		[s appendFormat: @"<numberOfAdults>%@</numberOfAdults>", [NSString stringWithFormat: @"%i", self.numberOfAdults]];
		[s appendFormat: @"<numberOfChildren>%@</numberOfChildren>", [NSString stringWithFormat: @"%i", self.numberOfChildren]];
		[s appendFormat: @"<childAges>%@</childAges>", [NSString stringWithFormat: @"%i", self.childAges]];
		if (self.firstName != nil) [s appendFormat: @"<firstName>%@</firstName>", [[self.firstName stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.lastName != nil) [s appendFormat: @"<lastName>%@</lastName>", [[self.lastName stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.bedTypeId != nil) [s appendFormat: @"<bedTypeId>%@</bedTypeId>", [[self.bedTypeId stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.bedTypeDescription != nil) [s appendFormat: @"<bedTypeDescription>%@</bedTypeDescription>", [[self.bedTypeDescription stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<numberOfBeds>%@</numberOfBeds>", [NSString stringWithFormat: @"%i", self.numberOfBeds]];
		if (self.smokingPreference != nil) [s appendFormat: @"<smokingPreference>%@</smokingPreference>", [[self.smokingPreference stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.roomTypeCode != nil) [s appendFormat: @"<roomTypeCode>%@</roomTypeCode>", [[self.roomTypeCode stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.rateCode != nil) [s appendFormat: @"<rateCode>%@</rateCode>", [[self.rateCode stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.rateKey != nil) [s appendFormat: @"<rateKey>%@</rateKey>", [[self.rateKey stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.roomDescription != nil) [s appendFormat: @"<roomDescription>%@</roomDescription>", [[self.roomDescription stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<chargeableRate>%@</chargeableRate>", [NSString stringWithFormat: @"%f", self.chargeableRate]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZRoom class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.firstName = nil;
		self.lastName = nil;
		self.bedTypeId = nil;
		self.bedTypeDescription = nil;
		self.smokingPreference = nil;
		self.roomTypeCode = nil;
		self.rateCode = nil;
		self.rateKey = nil;
		self.roomDescription = nil;
		[super dealloc];
	}

@end
