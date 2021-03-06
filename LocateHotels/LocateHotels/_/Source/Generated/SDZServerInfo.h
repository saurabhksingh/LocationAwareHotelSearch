/*
	SDZServerInfo.h
	The interface definition of properties and methods for the SDZServerInfo object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZServerInfo : SoapObject
{
	NSString* _instance;
	long _timestamp;
	NSString* _serverTime;
	
}
		
	@property (retain, nonatomic) NSString* instance;
	@property long timestamp;
	@property (retain, nonatomic) NSString* serverTime;

	+ (SDZServerInfo*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
