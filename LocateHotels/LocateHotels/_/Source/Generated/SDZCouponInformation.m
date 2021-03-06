/*
	SDZCouponInformation.h
	The implementation of properties and methods for the SDZCouponInformation object.
	Generated by SudzC.com
*/
#import "SDZCouponInformation.h"

@implementation SDZCouponInformation
	@synthesize couponCode = _couponCode;
	@synthesize couponDiscount = _couponDiscount;
	@synthesize couponEmail = _couponEmail;

	- (id) init
	{
		if(self = [super init])
		{
			self.couponCode = nil;
			self.couponDiscount = nil;
			self.couponEmail = nil;

		}
		return self;
	}

	+ (SDZCouponInformation*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZCouponInformation*)[[[SDZCouponInformation alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.couponCode = [Soap getNodeValue: node withName: @"couponCode"];
			self.couponDiscount = [Soap getNodeValue: node withName: @"couponDiscount"];
			self.couponEmail = [Soap getNodeValue: node withName: @"couponEmail"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"CouponInformation"];
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
		if (self.couponCode != nil) [s appendFormat: @"<couponCode>%@</couponCode>", [[self.couponCode stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.couponDiscount != nil) [s appendFormat: @"<couponDiscount>%@</couponDiscount>", [[self.couponDiscount stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.couponEmail != nil) [s appendFormat: @"<couponEmail>%@</couponEmail>", [[self.couponEmail stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZCouponInformation class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.couponCode = nil;
		self.couponDiscount = nil;
		self.couponEmail = nil;
		[super dealloc];
	}

@end
