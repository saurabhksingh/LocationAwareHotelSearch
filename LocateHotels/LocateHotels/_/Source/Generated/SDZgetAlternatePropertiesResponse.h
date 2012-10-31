/*
	SDZgetAlternatePropertiesResponse.h
	The interface definition of properties and methods for the SDZgetAlternatePropertiesResponse object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZAlternatePropertyListResponse;

@interface SDZgetAlternatePropertiesResponse : SoapObject
{
	SDZAlternatePropertyListResponse* _AlternatePropertyListResponse;
	
}
		
	@property (retain, nonatomic) SDZAlternatePropertyListResponse* AlternatePropertyListResponse;

	+ (SDZgetAlternatePropertiesResponse*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end