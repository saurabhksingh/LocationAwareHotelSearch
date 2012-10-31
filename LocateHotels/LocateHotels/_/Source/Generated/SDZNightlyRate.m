/*
	SDZNightlyRate.h
	The implementation of properties and methods for the SDZNightlyRate object.
	Generated by SudzC.com
*/
#import "SDZNightlyRate.h"

@implementation SDZNightlyRate
	@synthesize baseRate = _baseRate;
	@synthesize rate = _rate;
	@synthesize promo = _promo;

	- (id) init
	{
		if(self = [super init])
		{

		}
		return self;
	}

	+ (SDZNightlyRate*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZNightlyRate*)[[[SDZNightlyRate alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.baseRate = [[Soap getNodeValue: node withName: @"baseRate"] floatValue];
			self.rate = [[Soap getNodeValue: node withName: @"rate"] floatValue];
			self.promo = [[Soap getNodeValue: node withName: @"promo"] boolValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"NightlyRate"];
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

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];
		[s appendFormat: @" baseRate=\"%@\"", [NSString stringWithFormat: @"%f", self.baseRate]];
		[s appendFormat: @" rate=\"%@\"", [NSString stringWithFormat: @"%f", self.rate]];
		[s appendFormat: @" promo=\"%@\"", (self.promo)?@"true":@"false"];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZNightlyRate class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		[super dealloc];
	}

@end