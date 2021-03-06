/*
	SDZgetRoomImage.h
	The interface definition of properties and methods for the SDZgetRoomImage object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZHotelRoomImageRequest;

@interface SDZgetRoomImage : SoapObject
{
	SDZHotelRoomImageRequest* _HotelRoomImageRequest;
	
}
		
	@property (retain, nonatomic) SDZHotelRoomImageRequest* HotelRoomImageRequest;

	+ (SDZgetRoomImage*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
