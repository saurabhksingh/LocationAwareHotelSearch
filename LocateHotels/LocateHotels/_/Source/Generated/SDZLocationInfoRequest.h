/*
	SDZLocationInfoRequest.h
	The interface definition of properties and methods for the SDZLocationInfoRequest object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
#import "SDZHotelBaseRequest.h"
@class SDZHotelBaseRequest;


@interface SDZLocationInfoRequest : SDZHotelBaseRequest
{
	NSString* _address;
	NSString* _city;
	NSString* _stateProvinceCode;
	NSString* _countryCode;
	NSString* _postalCode;
	NSString* _destinationString;
	NSString* _destinationId;
	BOOL _ignoreSearchWeight;
	BOOL _useGeocoder;
	NSString* _type;
	
}
		
	@property (retain, nonatomic) NSString* address;
	@property (retain, nonatomic) NSString* city;
	@property (retain, nonatomic) NSString* stateProvinceCode;
	@property (retain, nonatomic) NSString* countryCode;
	@property (retain, nonatomic) NSString* postalCode;
	@property (retain, nonatomic) NSString* destinationString;
	@property (retain, nonatomic) NSString* destinationId;
	@property BOOL ignoreSearchWeight;
	@property BOOL useGeocoder;
	@property (retain, nonatomic) NSString* type;

	+ (SDZLocationInfoRequest*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
