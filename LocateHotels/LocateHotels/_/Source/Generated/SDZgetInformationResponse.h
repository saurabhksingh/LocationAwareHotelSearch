/*
	SDZgetInformationResponse.h
	The interface definition of properties and methods for the SDZgetInformationResponse object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZHotelInformationResponse;

@interface SDZgetInformationResponse : SoapObject
{
	SDZHotelInformationResponse* _HotelInformationResponse;
	
}
		
	@property (retain, nonatomic) SDZHotelInformationResponse* HotelInformationResponse;

	+ (SDZgetInformationResponse*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
