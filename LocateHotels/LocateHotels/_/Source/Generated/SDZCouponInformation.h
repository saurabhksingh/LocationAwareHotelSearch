/*
	SDZCouponInformation.h
	The interface definition of properties and methods for the SDZCouponInformation object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface SDZCouponInformation : SoapObject
{
	NSString* _couponCode;
	NSString* _couponDiscount;
	NSString* _couponEmail;
	
}
		
	@property (retain, nonatomic) NSString* couponCode;
	@property (retain, nonatomic) NSString* couponDiscount;
	@property (retain, nonatomic) NSString* couponEmail;

	+ (SDZCouponInformation*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end