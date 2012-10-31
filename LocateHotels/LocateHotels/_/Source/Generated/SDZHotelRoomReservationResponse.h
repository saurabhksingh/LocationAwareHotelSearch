/*
	SDZHotelRoomReservationResponse.h
	The interface definition of properties and methods for the SDZHotelRoomReservationResponse object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZHotelRateInfo;
@class SDZRoomGroup;
@class SDZCancelPolicyInfoList;
@class SDZCouponInformationResponse;
@class SDZRateInfos;
#import "SDZBaseResponse.h"
@class SDZBaseResponse;


@interface SDZHotelRoomReservationResponse : SDZBaseResponse
{
	long _itineraryId;
	NSString* _confirmationNumbers;
	SDZHotelRateInfo* _RateInfo;
	BOOL _processedWithConfirmation;
	NSString* _errorText;
	NSString* _hotelReplyText;
	NSString* _supplierType;
	NSString* _reservationStatusCode;
	BOOL _existingItinerary;
	int _numberOfRoomsBooked;
	NSMutableArray* _RoomGroup;
	NSString* _drivingDirections;
	NSString* _checkInInstructions;
	NSString* _arrivalDate;
	NSString* _departureDate;
	NSString* _hotelName;
	NSString* _hotelAddress;
	NSString* _hotelCity;
	NSString* _hotelStateProvinceCode;
	NSString* _hotelPostalCode;
	NSString* _hotelCountryCode;
	NSString* _roomDescription;
	NSString* _tripAdvisorRating;
	int _tripAdvisorReviewCount;
	NSString* _tripAdvisorRatingUrl;
	NSString* _cancellationPolicy;
	NSMutableArray* _CancelPolicyInfoList;
	BOOL _nonRefundable;
	int _rateOccupancyPerRoom;
	SDZCouponInformationResponse* _CouponInformationResponse;
	NSMutableArray* _RateInfos;
	
}
		
	@property long itineraryId;
	@property (retain, nonatomic) NSString* confirmationNumbers;
	@property (retain, nonatomic) SDZHotelRateInfo* RateInfo;
	@property BOOL processedWithConfirmation;
	@property (retain, nonatomic) NSString* errorText;
	@property (retain, nonatomic) NSString* hotelReplyText;
	@property (retain, nonatomic) NSString* supplierType;
	@property (retain, nonatomic) NSString* reservationStatusCode;
	@property BOOL existingItinerary;
	@property int numberOfRoomsBooked;
	@property (retain, nonatomic) NSMutableArray* RoomGroup;
	@property (retain, nonatomic) NSString* drivingDirections;
	@property (retain, nonatomic) NSString* checkInInstructions;
	@property (retain, nonatomic) NSString* arrivalDate;
	@property (retain, nonatomic) NSString* departureDate;
	@property (retain, nonatomic) NSString* hotelName;
	@property (retain, nonatomic) NSString* hotelAddress;
	@property (retain, nonatomic) NSString* hotelCity;
	@property (retain, nonatomic) NSString* hotelStateProvinceCode;
	@property (retain, nonatomic) NSString* hotelPostalCode;
	@property (retain, nonatomic) NSString* hotelCountryCode;
	@property (retain, nonatomic) NSString* roomDescription;
	@property (retain, nonatomic) NSString* tripAdvisorRating;
	@property int tripAdvisorReviewCount;
	@property (retain, nonatomic) NSString* tripAdvisorRatingUrl;
	@property (retain, nonatomic) NSString* cancellationPolicy;
	@property (retain, nonatomic) NSMutableArray* CancelPolicyInfoList;
	@property BOOL nonRefundable;
	@property int rateOccupancyPerRoom;
	@property (retain, nonatomic) SDZCouponInformationResponse* CouponInformationResponse;
	@property (retain, nonatomic) NSMutableArray* RateInfos;

	+ (SDZHotelRoomReservationResponse*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
