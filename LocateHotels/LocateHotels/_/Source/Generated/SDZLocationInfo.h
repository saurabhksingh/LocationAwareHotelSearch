/*
	SDZLocationInfo.h
	The interface definition of properties and methods for the SDZLocationInfo object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZLocationInfo : SoapObject
{
	NSString* _destinationId;
	BOOL _active;
	int _type;
	NSString* _address;
	NSString* _city;
	NSString* _stateProvinceCode;
	NSString* _postalCode;
	NSString* _countryCode;
	NSString* _countryName;
	NSString* _code;
	NSString* _description;
	int _geoAccuracy;
	BOOL _locationInDestination;
	float _latitude;
	float _longitude;
	float _refLocationMileage;
	NSString* _referenceLocationCode;
	int _activePropertyCount;
	
}
		
	@property (retain, nonatomic) NSString* destinationId;
	@property BOOL active;
	@property int type;
	@property (retain, nonatomic) NSString* address;
	@property (retain, nonatomic) NSString* city;
	@property (retain, nonatomic) NSString* stateProvinceCode;
	@property (retain, nonatomic) NSString* postalCode;
	@property (retain, nonatomic) NSString* countryCode;
	@property (retain, nonatomic) NSString* countryName;
	@property (retain, nonatomic) NSString* code;
	@property (retain, nonatomic) NSString* description;
	@property int geoAccuracy;
	@property BOOL locationInDestination;
	@property float latitude;
	@property float longitude;
	@property float refLocationMileage;
	@property (retain, nonatomic) NSString* referenceLocationCode;
	@property int activePropertyCount;

	+ (SDZLocationInfo*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
