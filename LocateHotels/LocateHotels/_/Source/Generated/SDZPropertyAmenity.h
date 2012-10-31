/*
	SDZPropertyAmenity.h
	The interface definition of properties and methods for the SDZPropertyAmenity object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZPropertyAmenity : SoapObject
{
	long _amenityId;
	NSString* _amenity;
	
}
		
	@property long amenityId;
	@property (retain, nonatomic) NSString* amenity;

	+ (SDZPropertyAmenity*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
