/*
	SDZSuppliers.h
	The implementation of properties and methods for the SDZSuppliers array.
	Generated by SudzC.com
*/
#import "SDZSuppliers.h"

#import "SDZSupplier.h"
@implementation SDZSuppliers

	+ (id) createWithNode: (CXMLNode*) node
	{
		return [[[SDZSuppliers alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				SDZSupplier* value = [[SDZSupplier createWithNode: child] object];
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
			[s appendString: [item serialize: @"Supplier"]];
		}
		return s;
	}
@end