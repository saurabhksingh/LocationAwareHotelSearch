/*
	SDZHotelBaseRequest.h
	The implementation of properties and methods for the SDZHotelBaseRequest object.
	Generated by SudzC.com
*/
#import "SDZHotelBaseRequest.h"

@implementation SDZHotelBaseRequest
	@synthesize minorRev = _minorRev;

	- (id) init
	{
		if(self = [super init])
		{

		}
		return self;
	}

	+ (SDZHotelBaseRequest*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZHotelBaseRequest*)[[[SDZHotelBaseRequest alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.minorRev = [[Soap getNodeValue: node withName: @"minorRev"] intValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"HotelBaseRequest"];
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
		[s appendFormat: @"<minorRev>%@</minorRev>", [NSString stringWithFormat: @"%i", self.minorRev]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZHotelBaseRequest class]]) {
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
