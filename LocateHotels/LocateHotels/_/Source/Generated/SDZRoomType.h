/*
	SDZRoomType.h
	The interface definition of properties and methods for the SDZRoomType object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZRoomAmenities;
@class SDZHotelImages;

@interface SDZRoomType : SoapObject
{
	NSString* _description;
	NSString* _descriptionLong;
	NSMutableArray* _roomAmenities;
	NSMutableArray* _roomImages;
	long _roomTypeId;
	NSString* _roomCode;
	
}
		
	@property (retain, nonatomic) NSString* description;
	@property (retain, nonatomic) NSString* descriptionLong;
	@property (retain, nonatomic) NSMutableArray* roomAmenities;
	@property (retain, nonatomic) NSMutableArray* roomImages;
	@property long roomTypeId;
	@property (retain, nonatomic) NSString* roomCode;

	+ (SDZRoomType*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
