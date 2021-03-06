/*
	SDZBaseResponse.h
	The interface definition of properties and methods for the SDZBaseResponse object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class SDZEanWsError;

@interface SDZBaseResponse : SoapObject
{
	SDZEanWsError* _EanWsError;
	NSString* _customerSessionId;
	
}
		
	@property (retain, nonatomic) SDZEanWsError* EanWsError;
	@property (retain, nonatomic) NSString* customerSessionId;

	+ (SDZBaseResponse*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
