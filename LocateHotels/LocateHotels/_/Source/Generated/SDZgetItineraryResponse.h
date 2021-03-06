/*
	SDZgetItineraryResponse.h
	The interface definition of properties and methods for the SDZgetItineraryResponse object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZHotelItineraryResponse;

@interface SDZgetItineraryResponse : SoapObject
{
	SDZHotelItineraryResponse* _HotelItineraryResponse;
	
}
		
	@property (retain, nonatomic) SDZHotelItineraryResponse* HotelItineraryResponse;

	+ (SDZgetItineraryResponse*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
