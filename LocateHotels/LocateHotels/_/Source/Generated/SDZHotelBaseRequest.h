/*
	SDZHotelBaseRequest.h
	The interface definition of properties and methods for the SDZHotelBaseRequest object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
#import "SDZBaseRequest.h"
@class SDZBaseRequest;


@interface SDZHotelBaseRequest : SDZBaseRequest
{
	int _minorRev;
	
}
		
	@property int minorRev;

	+ (SDZHotelBaseRequest*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
