/*
	SDZv3.HotelPaymentRequest.h
	The interface definition of properties and methods for the SDZv3.HotelPaymentRequest object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
#import "SDZHotelPaymentRequest.h"
@class SDZHotelPaymentRequest;


@interface SDZv3.HotelPaymentRequest : SDZHotelPaymentRequest
{
	long _hotelId;
	BOOL _immediateChargeRequired;
	NSString* _supplierType;
	
}
		
	@property long hotelId;
	@property BOOL immediateChargeRequired;
	@property (retain, nonatomic) NSString* supplierType;

	+ (SDZv3.HotelPaymentRequest*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
