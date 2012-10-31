/*
	SDZPaymentType.h
	The interface definition of properties and methods for the SDZPaymentType object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZPaymentType : SoapObject
{
	NSString* _code;
	NSString* _name;
	
}
		
	@property (retain, nonatomic) NSString* code;
	@property (retain, nonatomic) NSString* name;

	+ (SDZPaymentType*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
