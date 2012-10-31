/*
	SDZCouponErrors.h
	The implementation of properties and methods for the SDZCouponErrors array.
	Generated by SudzC.com
*/
#import "SDZCouponErrors.h"

#import "SDZError.h"
@implementation SDZCouponErrors

	+ (id) createWithNode: (CXMLNode*) node
	{
		return [[[SDZCouponErrors alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				SDZError* value = [[SDZError createWithNode: child] object];
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
			[s appendString: [item serialize: @"Error"]];
		}
		return s;
	}
@end
