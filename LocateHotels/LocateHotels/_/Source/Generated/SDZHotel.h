/*
	SDZHotel.h
	The interface definition of properties and methods for the SDZHotel object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZHotel : SoapObject
{
	long _hotelId;
	NSString* _statusCode;
	NSString* _name;
	NSString* _address1;
	NSString* _address2;
	NSString* _address3;
	NSString* _city;
	NSString* _stateProvinceCode;
	NSString* _countryCode;
	NSString* _postalCode;
	NSString* _phone;
	NSString* _fax;
	float _latitude;
	float _longitude;
	NSString* _coordinateAccuracyCode;
	float _lowRate;
	float _highRate;
	long _confidence;
	float _hotelRating;
	float _tripAdvisorRating;
	NSString* _market;
	NSString* _region;
	NSString* _superRegion;
	NSString* _theme;
	
}
		
	@property long hotelId;
	@property (retain, nonatomic) NSString* statusCode;
	@property (retain, nonatomic) NSString* name;
	@property (retain, nonatomic) NSString* address1;
	@property (retain, nonatomic) NSString* address2;
	@property (retain, nonatomic) NSString* address3;
	@property (retain, nonatomic) NSString* city;
	@property (retain, nonatomic) NSString* stateProvinceCode;
	@property (retain, nonatomic) NSString* countryCode;
	@property (retain, nonatomic) NSString* postalCode;
	@property (retain, nonatomic) NSString* phone;
	@property (retain, nonatomic) NSString* fax;
	@property float latitude;
	@property float longitude;
	@property (retain, nonatomic) NSString* coordinateAccuracyCode;
	@property float lowRate;
	@property float highRate;
	@property long confidence;
	@property float hotelRating;
	@property float tripAdvisorRating;
	@property (retain, nonatomic) NSString* market;
	@property (retain, nonatomic) NSString* region;
	@property (retain, nonatomic) NSString* superRegion;
	@property (retain, nonatomic) NSString* theme;

	+ (SDZHotel*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
