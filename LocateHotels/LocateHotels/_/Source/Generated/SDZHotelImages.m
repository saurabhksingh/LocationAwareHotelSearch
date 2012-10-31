/*
	SDZHotelImages.h
	The implementation of properties and methods for the SDZHotelImages array.
	Generated by SudzC.com
*/
#import "SDZHotelImages.h"

#import "SDZHotelImage.h"
@implementation SDZHotelImages

	+ (id) createWithNode: (CXMLNode*) node
	{
		return [[[SDZHotelImages alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				SDZHotelImage* value = [[SDZHotelImage createWithNode: child] object];
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
			[s appendString: [item serialize: @"HotelImage"]];
		}
		return s;
	}
@end