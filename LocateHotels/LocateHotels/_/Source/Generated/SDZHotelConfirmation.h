/*
	SDZHotelConfirmation.h
	The interface definition of properties and methods for the SDZHotelConfirmation object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZHotelRateInfo;
@class SDZRateInfos;
@class SDZCouponInformation;
@class SDZReservationGuest;
@class SDZHotel;
@class SDZConfirmationExtras;

@interface SDZHotelConfirmation : SoapObject
{
	long _supplierId;
	NSString* _chainCode;
	NSString* _creditCardType;
	NSString* _arrivalDate;
	NSString* _departureDate;
	NSString* _confirmationNumber;
	NSString* _cancellationNumber;
	SDZHotelRateInfo* _RateInfo;
	NSMutableArray* _RateInfos;
	int _numberOfAdults;
	int _numberOfChildren;
	NSString* _cancellationPolicy;
	NSString* _affiliateConfirmationId;
	NSString* _smokingPreference;
	NSString* _supplierPropertyId;
	NSString* _roomType;
	NSString* _rateType;
	NSString* _rateDescription;
	NSString* _roomDescription;
	NSString* _status;
	BOOL _nonRefundable;
	NSString* _locale;
	SDZCouponInformation* _CouponInformation;
	SDZReservationGuest* _ReservationGuest;
	SDZHotel* _Hotel;
	NSMutableArray* _ConfirmationExtras;
	int _nights;
	
}
		
	@property long supplierId;
	@property (retain, nonatomic) NSString* chainCode;
	@property (retain, nonatomic) NSString* creditCardType;
	@property (retain, nonatomic) NSString* arrivalDate;
	@property (retain, nonatomic) NSString* departureDate;
	@property (retain, nonatomic) NSString* confirmationNumber;
	@property (retain, nonatomic) NSString* cancellationNumber;
	@property (retain, nonatomic) SDZHotelRateInfo* RateInfo;
	@property (retain, nonatomic) NSMutableArray* RateInfos;
	@property int numberOfAdults;
	@property int numberOfChildren;
	@property (retain, nonatomic) NSString* cancellationPolicy;
	@property (retain, nonatomic) NSString* affiliateConfirmationId;
	@property (retain, nonatomic) NSString* smokingPreference;
	@property (retain, nonatomic) NSString* supplierPropertyId;
	@property (retain, nonatomic) NSString* roomType;
	@property (retain, nonatomic) NSString* rateType;
	@property (retain, nonatomic) NSString* rateDescription;
	@property (retain, nonatomic) NSString* roomDescription;
	@property (retain, nonatomic) NSString* status;
	@property BOOL nonRefundable;
	@property (retain, nonatomic) NSString* locale;
	@property (retain, nonatomic) SDZCouponInformation* CouponInformation;
	@property (retain, nonatomic) SDZReservationGuest* ReservationGuest;
	@property (retain, nonatomic) SDZHotel* Hotel;
	@property (retain, nonatomic) NSMutableArray* ConfirmationExtras;
	@property int nights;

	+ (SDZHotelConfirmation*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
