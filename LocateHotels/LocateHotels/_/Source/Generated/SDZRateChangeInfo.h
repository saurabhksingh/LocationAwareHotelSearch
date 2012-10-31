/*
	SDZRateChangeInfo.h
	The interface definition of properties and methods for the SDZRateChangeInfo object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZRateChangeInfo : SoapObject
{
	NSString* _beginDate;
	NSString* _endDate;
	float _rate;
	NSString* _rawRateChangeData;
	
}
		
	@property (retain, nonatomic) NSString* beginDate;
	@property (retain, nonatomic) NSString* endDate;
	@property float rate;
	@property (retain, nonatomic) NSString* rawRateChangeData;

	+ (SDZRateChangeInfo*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
