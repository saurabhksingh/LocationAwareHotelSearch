/*
	SDZRoomAmenities.h
	The implementation of properties and methods for the SDZRoomAmenities array.
	Generated by SudzC.com
*/
#import "SDZRoomAmenities.h"

#import "SDZRoomAmenity.h"
@implementation SDZRoomAmenities

	+ (id) createWithNode: (CXMLNode*) node
	{
		return [[[SDZRoomAmenities alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				SDZRoomAmenity* value = [[SDZRoomAmenity createWithNode: child] object];
				if(value != nil) {
					[self addObject: value];
				}
			}
		}
		return self;
	}
	
	+ (NSMutableString*) serialize: (NSArray*) array
	{
		NSMutableString* s = [NSMutableString string];
		for(id item in array) {
			[s appendString: [item serialize: @"RoomAmenity"]];
		}
		return s;
	}
@end
