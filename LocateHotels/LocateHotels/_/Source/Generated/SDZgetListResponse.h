/*
	SDZgetListResponse.h
	The interface definition of properties and methods for the SDZgetListResponse object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZHotelListResponse;

@interface SDZgetListResponse : SoapObject
{
	SDZHotelListResponse* _HotelListResponse;
	
}
		
	@property (retain, nonatomic) SDZHotelListResponse* HotelListResponse;

	+ (SDZgetListResponse*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
