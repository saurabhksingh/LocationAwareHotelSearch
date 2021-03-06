/*
	SDZRoomTypes.h
	The implementation of properties and methods for the SDZRoomTypes array.
	Generated by SudzC.com
*/
#import "SDZRoomTypes.h"

#import "SDZRoomType.h"
@implementation SDZRoomTypes

	+ (id) createWithNode: (CXMLNode*) node
	{
		return [[[SDZRoomTypes alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				SDZRoomType* value = [[SDZRoomType createWithNode: child] object];
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
			[s appendString: [item serialize: @"RoomType"]];
		}
		return s;
	}
@end
