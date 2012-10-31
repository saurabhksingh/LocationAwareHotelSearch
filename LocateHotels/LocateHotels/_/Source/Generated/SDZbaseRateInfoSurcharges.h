/*
	SDZbaseRateInfoSurcharges.h
	The interface definition of properties and methods for the SDZbaseRateInfoSurcharges object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZSurcharge;
#import "SDZlistWithSizeAttribute.h"
@class SDZlistWithSizeAttribute;


@interface SDZbaseRateInfoSurcharges : SDZlistWithSizeAttribute
{
	SDZSurcharge* _Surcharge;
	
}
		
	@property (retain, nonatomic) SDZSurcharge* Surcharge;

	+ (SDZbaseRateInfoSurcharges*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
