/*
	SDZRoomImages.h
	The implementation of properties and methods for the SDZRoomImages array.
	Generated by SudzC.com
*/
#import "SDZRoomImages.h"

#import "SDZRoomImage.h"
@implementation SDZRoomImages

	+ (id) createWithNode: (CXMLNode*) node
	{
		return [[[SDZRoomImages alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				SDZRoomImage* value = [[SDZRoomImage createWithNode: child] object];
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
			[s appendString: [item serialize: @"RoomImage"]];
		}
		return s;
	}
@end
