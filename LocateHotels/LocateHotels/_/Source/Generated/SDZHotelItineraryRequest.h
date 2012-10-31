/*
	SDZHotelItineraryRequest.h
	The interface definition of properties and methods for the SDZHotelItineraryRequest object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZItineraryQuery;
#import "SDZHotelBaseRequest.h"
@class SDZHotelBaseRequest;


@interface SDZHotelItineraryRequest : SDZHotelBaseRequest
{
	long _itineraryId;
	NSString* _lastName;
	NSString* _email;
	NSString* _affiliateConfirmationId;
	NSString* _affiliateCustomerId;
	SDZItineraryQuery* _ItineraryQuery;
	NSString* _confirmationExtras;
	
}
		
	@property long itineraryId;
	@property (retain, nonatomic) NSString* lastName;
	@property (retain, nonatomic) NSString* email;
	@property (retain, nonatomic) NSString* affiliateConfirmationId;
	@property (retain, nonatomic) NSString* affiliateCustomerId;
	@property (retain, nonatomic) SDZItineraryQuery* ItineraryQuery;
	@property (retain, nonatomic) NSString* confirmationExtras;

	+ (SDZHotelItineraryRequest*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
