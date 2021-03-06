/*
	SDZSurcharge.h
	The interface definition of properties and methods for the SDZSurcharge object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZSurcharge : SoapObject
{
	NSString* _type;
	float _amount;
	
}
		
	@property (retain, nonatomic) NSString* type;
	@property float amount;

	+ (SDZSurcharge*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
