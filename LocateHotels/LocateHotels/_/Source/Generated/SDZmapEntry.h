/*
	SDZmapEntry.h
	The interface definition of properties and methods for the SDZmapEntry object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZmapEntry : SoapObject
{
	NSString* _key;
	NSString* _value;
	
}
		
	@property (retain, nonatomic) NSString* key;
	@property (retain, nonatomic) NSString* value;

	+ (SDZmapEntry*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
