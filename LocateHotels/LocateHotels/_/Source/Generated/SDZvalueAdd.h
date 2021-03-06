/*
	SDZvalueAdd.h
	The interface definition of properties and methods for the SDZvalueAdd object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZvalueAdd : SoapObject
{
	NSString* _description;
	int __id;
	
}
		
	@property (retain, nonatomic) NSString* description;
	@property int _id;

	+ (SDZvalueAdd*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
