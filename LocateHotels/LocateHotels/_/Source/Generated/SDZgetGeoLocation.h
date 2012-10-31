/*
	SDZgetGeoLocation.h
	The interface definition of properties and methods for the SDZgetGeoLocation object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZLocationInfoRequest;

@interface SDZgetGeoLocation : SoapObject
{
	SDZLocationInfoRequest* _LocationInfoRequest;
	
}
		
	@property (retain, nonatomic) SDZLocationInfoRequest* LocationInfoRequest;

	+ (SDZgetGeoLocation*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end