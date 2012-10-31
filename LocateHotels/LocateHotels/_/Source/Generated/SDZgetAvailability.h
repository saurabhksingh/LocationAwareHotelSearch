/*
	SDZgetAvailability.h
	The interface definition of properties and methods for the SDZgetAvailability object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZHotelRoomAvailabilityRequest;

@interface SDZgetAvailability : SoapObject
{
	SDZHotelRoomAvailabilityRequest* _HotelRoomAvailabilityRequest;
	
}
		
	@property (retain, nonatomic) SDZHotelRoomAvailabilityRequest* HotelRoomAvailabilityRequest;

	+ (SDZgetAvailability*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end