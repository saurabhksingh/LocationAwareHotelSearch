/*
	SDZConfirmationExtras.h
	The implementation of properties and methods for the SDZConfirmationExtras array.
	Generated by SudzC.com
*/
#import "SDZConfirmationExtras.h"

#import "SDZConfirmationExtra.h"
@implementation SDZConfirmationExtras

	+ (id) createWithNode: (CXMLNode*) node
	{
		return [[[SDZConfirmationExtras alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				SDZConfirmationExtra* value = [[SDZConfirmationExtra createWithNode: child] object];
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
			[s appendString: [item serialize: @"ConfirmationExtra"]];
		}
		return s;
	}
@end
