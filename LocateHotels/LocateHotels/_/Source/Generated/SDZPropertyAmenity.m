/*
	SDZPropertyAmenity.h
	The implementation of properties and methods for the SDZPropertyAmenity object.
	Generated by SudzC.com
*/
#import "SDZPropertyAmenity.h"

@implementation SDZPropertyAmenity
	@synthesize amenityId = _amenityId;
	@synthesize amenity = _amenity;

	- (id) init
	{
		if(self = [super init])
		{
			self.amenity = nil;

		}
		return self;
	}

	+ (SDZPropertyAmenity*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZPropertyAmenity*)[[[SDZPropertyAmenity alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.amenityId = [[Soap getNodeValue: node withName: @"amenityId"] longLongValue];
			self.amenity = [Soap getNodeValue: node withName: @"amenity"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"PropertyAmenity"];
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
		[s appendFormat: @"<amenityId>%@</amenityId>", [NSString stringWithFormat: @"%ld", self.amenityId]];
		if (self.amenity != nil) [s appendFormat: @"<amenity>%@</amenity>", [[self.amenity stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZPropertyAmenity class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.amenity = nil;
		[super dealloc];
	}

@end
