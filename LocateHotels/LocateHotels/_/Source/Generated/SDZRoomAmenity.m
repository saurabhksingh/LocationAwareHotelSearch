/*
	SDZRoomAmenity.h
	The implementation of properties and methods for the SDZRoomAmenity object.
	Generated by SudzC.com
*/
#import "SDZRoomAmenity.h"

@implementation SDZRoomAmenity
	@synthesize amenity = _amenity;
	@synthesize amenityId = _amenityId;

	- (id) init
	{
		if(self = [super init])
		{
			self.amenity = nil;

		}
		return self;
	}

	+ (SDZRoomAmenity*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZRoomAmenity*)[[[SDZRoomAmenity alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.amenity = [Soap getNodeValue: node withName: @"amenity"];
			self.amenityId = [[Soap getNodeValue: node withName: @"amenityId"] longLongValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"RoomAmenity"];
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
		if (self.amenity != nil) [s appendFormat: @"<amenity>%@</amenity>", [[self.amenity stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];
		[s appendFormat: @" amenityId=\"%@\"", [NSString stringWithFormat: @"%ld", self.amenityId]];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZRoomAmenity class]]) {
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
