/*
	SDZRoomImage.h
	The interface definition of properties and methods for the SDZRoomImage object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZRoomImage : SoapObject
{
	NSString* _roomTypeCode;
	NSString* _url;
	
}
		
	@property (retain, nonatomic) NSString* roomTypeCode;
	@property (retain, nonatomic) NSString* url;

	+ (SDZRoomImage*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
