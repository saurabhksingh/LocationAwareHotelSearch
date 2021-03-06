/*
	SDZHotelRateInfo.h
	The interface definition of properties and methods for the SDZHotelRateInfo object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZRoomGroup;
@class SDZbaseRateInfo;
@class SDZbaseRateInfo;
@class SDZCancelPolicyInfoList;

@interface SDZHotelRateInfo : SoapObject
{
	NSMutableArray* _RoomGroup;
	SDZbaseRateInfo* _ChargeableRateInfo;
	SDZbaseRateInfo* _ConvertedRateInfo;
	NSString* _confirmationNumbers;
	NSString* _cancellationPolicy;
	NSMutableArray* _CancelPolicyInfoList;
	BOOL _nonRefundable;
	BOOL _online;
	NSString* _ratePlanType;
	BOOL _priceBreakdown;
	BOOL _promo;
	BOOL _rateChange;
	NSString* _pkgSavingsPercent;
	NSString* _pkgSavingsAmount;
	
}
		
	@property (retain, nonatomic) NSMutableArray* RoomGroup;
	@property (retain, nonatomic) SDZbaseRateInfo* ChargeableRateInfo;
	@property (retain, nonatomic) SDZbaseRateInfo* ConvertedRateInfo;
	@property (retain, nonatomic) NSString* confirmationNumbers;
	@property (retain, nonatomic) NSString* cancellationPolicy;
	@property (retain, nonatomic) NSMutableArray* CancelPolicyInfoList;
	@property BOOL nonRefundable;
	@property BOOL online;
	@property (retain, nonatomic) NSString* ratePlanType;
	@property BOOL priceBreakdown;
	@property BOOL promo;
	@property BOOL rateChange;
	@property (retain, nonatomic) NSString* pkgSavingsPercent;
	@property (retain, nonatomic) NSString* pkgSavingsAmount;

	+ (SDZHotelRateInfo*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
