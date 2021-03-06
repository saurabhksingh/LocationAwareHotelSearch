/*
	SDZHotelRateInfo.h
	The implementation of properties and methods for the SDZHotelRateInfo object.
	Generated by SudzC.com
*/
#import "SDZHotelRateInfo.h"

#import "SDZRoomGroup.h"
#import "SDZbaseRateInfo.h"
#import "SDZbaseRateInfo.h"
#import "SDZCancelPolicyInfoList.h"
@implementation SDZHotelRateInfo
	@synthesize RoomGroup = _RoomGroup;
	@synthesize ChargeableRateInfo = _ChargeableRateInfo;
	@synthesize ConvertedRateInfo = _ConvertedRateInfo;
	@synthesize confirmationNumbers = _confirmationNumbers;
	@synthesize cancellationPolicy = _cancellationPolicy;
	@synthesize CancelPolicyInfoList = _CancelPolicyInfoList;
	@synthesize nonRefundable = _nonRefundable;
	@synthesize online = _online;
	@synthesize ratePlanType = _ratePlanType;
	@synthesize priceBreakdown = _priceBreakdown;
	@synthesize promo = _promo;
	@synthesize rateChange = _rateChange;
	@synthesize pkgSavingsPercent = _pkgSavingsPercent;
	@synthesize pkgSavingsAmount = _pkgSavingsAmount;

	- (id) init
	{
		if(self = [super init])
		{
			self.RoomGroup = [[[NSMutableArray alloc] init] autorelease];
			self.ChargeableRateInfo = nil; // [[SDZbaseRateInfo alloc] init];
			self.ConvertedRateInfo = nil; // [[SDZbaseRateInfo alloc] init];
			self.confirmationNumbers = nil;
			self.cancellationPolicy = nil;
			self.CancelPolicyInfoList = [[[NSMutableArray alloc] init] autorelease];
			self.ratePlanType = nil;
			self.pkgSavingsPercent = nil;
			self.pkgSavingsAmount = nil;

		}
		return self;
	}

	+ (SDZHotelRateInfo*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZHotelRateInfo*)[[[SDZHotelRateInfo alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.RoomGroup = [[SDZRoomGroup createWithNode: [Soap getNode: node withName: @"RoomGroup"]] object];
			self.ChargeableRateInfo = [[SDZbaseRateInfo createWithNode: [Soap getNode: node withName: @"ChargeableRateInfo"]] object];
			self.ConvertedRateInfo = [[SDZbaseRateInfo createWithNode: [Soap getNode: node withName: @"ConvertedRateInfo"]] object];
			self.confirmationNumbers = [Soap getNodeValue: node withName: @"confirmationNumbers"];
			self.cancellationPolicy = [Soap getNodeValue: node withName: @"cancellationPolicy"];
			self.CancelPolicyInfoList = [[SDZCancelPolicyInfoList createWithNode: [Soap getNode: node withName: @"CancelPolicyInfoList"]] object];
			self.nonRefundable = [[Soap getNodeValue: node withName: @"nonRefundable"] boolValue];
			self.online = [[Soap getNodeValue: node withName: @"online"] boolValue];
			self.ratePlanType = [Soap getNodeValue: node withName: @"ratePlanType"];
			self.priceBreakdown = [[Soap getNodeValue: node withName: @"priceBreakdown"] boolValue];
			self.promo = [[Soap getNodeValue: node withName: @"promo"] boolValue];
			self.rateChange = [[Soap getNodeValue: node withName: @"rateChange"] boolValue];
			self.pkgSavingsPercent = [Soap getNodeValue: node withName: @"pkgSavingsPercent"];
			self.pkgSavingsAmount = [Soap getNodeValue: node withName: @"pkgSavingsAmount"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"HotelRateInfo"];
	}
  
	- (NSMutableString*) serialize: (NSString*) nodeName
	{
		NSMutableString* s = [NSMutableString string];
		[s appendFormat: @"<%@", nodeName];
		[s appendString: [self serializeAttributes]];
		[s appendString: @">"];
		[s appendString: [self serializeElements]];
		[s appendFormat: @"</%@>", nodeName];
		return s;
	}
	
	- (NSMutableString*) serializeElements
	{
		NSMutableString* s = [super serializeElements];
		if (self.RoomGroup != nil && self.RoomGroup.count > 0) {
			[s appendFormat: @"<RoomGroup>%@</RoomGroup>", [SDZRoomGroup serialize: self.RoomGroup]];
		} else {
			[s appendString: @"<RoomGroup/>"];
		}
		if (self.ChargeableRateInfo != nil) [s appendString: [self.ChargeableRateInfo serialize: @"ChargeableRateInfo"]];
		if (self.ConvertedRateInfo != nil) [s appendString: [self.ConvertedRateInfo serialize: @"ConvertedRateInfo"]];
		if (self.confirmationNumbers != nil) [s appendFormat: @"<confirmationNumbers>%@</confirmationNumbers>", [[self.confirmationNumbers stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.cancellationPolicy != nil) [s appendFormat: @"<cancellationPolicy>%@</cancellationPolicy>", [[self.cancellationPolicy stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.CancelPolicyInfoList != nil && self.CancelPolicyInfoList.count > 0) {
			[s appendFormat: @"<CancelPolicyInfoList>%@</CancelPolicyInfoList>", [SDZCancelPolicyInfoList serialize: self.CancelPolicyInfoList]];
		} else {
			[s appendString: @"<CancelPolicyInfoList/>"];
		}
		[s appendFormat: @"<nonRefundable>%@</nonRefundable>", (self.nonRefundable)?@"true":@"false"];
		[s appendFormat: @"<online>%@</online>", (self.online)?@"true":@"false"];
		if (self.ratePlanType != nil) [s appendFormat: @"<ratePlanType>%@</ratePlanType>", [[self.ratePlanType stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];
		[s appendFormat: @" priceBreakdown=\"%@\"", (self.priceBreakdown)?@"true":@"false"];
		[s appendFormat: @" promo=\"%@\"", (self.promo)?@"true":@"false"];
		[s appendFormat: @" rateChange=\"%@\"", (self.rateChange)?@"true":@"false"];
		if (self.pkgSavingsPercent != nil) [s appendFormat: @" pkgSavingsPercent=\"%@\"", [[self.pkgSavingsPercent stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.pkgSavingsAmount != nil) [s appendFormat: @" pkgSavingsAmount=\"%@\"", [[self.pkgSavingsAmount stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZHotelRateInfo class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.RoomGroup = nil;
		self.ChargeableRateInfo = nil;
		self.ConvertedRateInfo = nil;
		self.confirmationNumbers = nil;
		self.cancellationPolicy = nil;
		self.CancelPolicyInfoList = nil;
		self.ratePlanType = nil;
		self.pkgSavingsPercent = nil;
		self.pkgSavingsAmount = nil;
		[super dealloc];
	}

@end
