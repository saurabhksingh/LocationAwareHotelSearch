/*
	SDZPropertyAmenities.h
	The implementation of properties and methods for the SDZPropertyAmenities array.
	Generated by SudzC.com
*/
#import "SDZPropertyAmenities.h"

#import "SDZPropertyAmenity.h"
@implementation SDZPropertyAmenities

	+ (id) createWithNode: (CXMLNode*) node
	{
		return [[[SDZPropertyAmenities alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				SDZPropertyAmenity* value = [[SDZPropertyAmenity createWithNode: child] object];
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
			[s appendString: [item serialize: @"PropertyAmenity"]];
		}
		return s;
	}
@end
