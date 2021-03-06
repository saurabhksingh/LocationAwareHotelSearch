/*
	SDZRateChangeInfos.h
	The implementation of properties and methods for the SDZRateChangeInfos array.
	Generated by SudzC.com
*/
#import "SDZRateChangeInfos.h"

#import "SDZRateChangeInfo.h"
@implementation SDZRateChangeInfos

	+ (id) createWithNode: (CXMLNode*) node
	{
		return [[[SDZRateChangeInfos alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				SDZRateChangeInfo* value = [[SDZRateChangeInfo createWithNode: child] object];
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
			[s appendString: [item serialize: @"RateChangeInfo"]];
		}
		return s;
	}
@end
