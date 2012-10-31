/*
	SDZHotelRateRulesRequest.h
	The interface definition of properties and methods for the SDZHotelRateRulesRequest object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZRoomGroup;
#import "SDZHotelBaseRequest.h"
@class SDZHotelBaseRequest;


@interface SDZHotelRateRulesRequest : SDZHotelBaseRequest
{
	long _hotelId;
	NSString* _arrivalDate;
	NSString* _departureDate;
	NSString* _supplierType;
	NSString* _roomTypeCode;
	NSString* _rateCode;
	NSMutableArray* _RoomGroup;
	
}
		
	@property long hotelId;
	@property (retain, nonatomic) NSString* arrivalDate;
	@property (retain, nonatomic) NSString* departureDate;
	@property (retain, nonatomic) NSString* supplierType;
	@property (retain, nonatomic) NSString* roomTypeCode;
	@property (retain, nonatomic) NSString* rateCode;
	@property (retain, nonatomic) NSMutableArray* RoomGroup;

	+ (SDZHotelRateRulesRequest*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end