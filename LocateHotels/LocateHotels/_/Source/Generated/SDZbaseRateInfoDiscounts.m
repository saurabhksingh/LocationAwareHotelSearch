/*
	SDZbaseRateInfoDiscounts.h
	The implementation of properties and methods for the SDZbaseRateInfoDiscounts object.
	Generated by SudzC.com
*/
#import "SDZbaseRateInfoDiscounts.h"

#import "SDZDiscount.h"
@implementation SDZbaseRateInfoDiscounts
	@synthesize Discount = _Discount;

	- (id) init
	{
		if(self = [super init])
		{
			self.Discount = nil; // [[SDZDiscount alloc] init];

		}
		return self;
	}

	+ (SDZbaseRateInfoDiscounts*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZbaseRateInfoDiscounts*)[[[SDZbaseRateInfoDiscounts alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.Discount = [[SDZDiscount createWithNode: [Soap getNode: node withName: @"Discount"]] object];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"baseRateInfoDiscounts"];
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
		if (self.Discount != nil) [s appendString: [self.Discount serialize: @"Discount"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZbaseRateInfoDiscounts class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.Discount = nil;
		[super dealloc];
	}

@end
