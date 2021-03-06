/*
	SDZRoom.h
	The interface definition of properties and methods for the SDZRoom object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZRoom : SoapObject
{
	int _numberOfAdults;
	int _numberOfChildren;
	int _childAges;
	NSString* _firstName;
	NSString* _lastName;
	NSString* _bedTypeId;
	NSString* _bedTypeDescription;
	int _numberOfBeds;
	NSString* _smokingPreference;
	NSString* _roomTypeCode;
	NSString* _rateCode;
	NSString* _rateKey;
	NSString* _roomDescription;
	float _chargeableRate;
	
}
		
	@property int numberOfAdults;
	@property int numberOfChildren;
	@property int childAges;
	@property (retain, nonatomic) NSString* firstName;
	@property (retain, nonatomic) NSString* lastName;
	@property (retain, nonatomic) NSString* bedTypeId;
	@property (retain, nonatomic) NSString* bedTypeDescription;
	@property int numberOfBeds;
	@property (retain, nonatomic) NSString* smokingPreference;
	@property (retain, nonatomic) NSString* roomTypeCode;
	@property (retain, nonatomic) NSString* rateCode;
	@property (retain, nonatomic) NSString* rateKey;
	@property (retain, nonatomic) NSString* roomDescription;
	@property float chargeableRate;

	+ (SDZRoom*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
