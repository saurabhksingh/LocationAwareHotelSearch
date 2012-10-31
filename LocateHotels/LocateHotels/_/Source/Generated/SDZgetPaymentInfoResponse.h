/*
	SDZgetPaymentInfoResponse.h
	The interface definition of properties and methods for the SDZgetPaymentInfoResponse object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZHotelPaymentResponse;

@interface SDZgetPaymentInfoResponse : SoapObject
{
	SDZHotelPaymentResponse* _HotelPaymentResponse;
	
}
		
	@property (retain, nonatomic) SDZHotelPaymentResponse* HotelPaymentResponse;

	+ (SDZgetPaymentInfoResponse*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end