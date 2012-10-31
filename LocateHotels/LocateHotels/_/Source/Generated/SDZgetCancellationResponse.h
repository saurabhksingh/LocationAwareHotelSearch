/*
	SDZgetCancellationResponse.h
	The interface definition of properties and methods for the SDZgetCancellationResponse object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZHotelRoomCancellationResponse;

@interface SDZgetCancellationResponse : SoapObject
{
	SDZHotelRoomCancellationResponse* _HotelRoomCancellationResponse;
	
}
		
	@property (retain, nonatomic) SDZHotelRoomCancellationResponse* HotelRoomCancellationResponse;

	+ (SDZgetCancellationResponse*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end