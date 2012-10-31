/*
	SDZCachedSupplierResponse.h
	The implementation of properties and methods for the SDZCachedSupplierResponse object.
	Generated by SudzC.com
*/
#import "SDZCachedSupplierResponse.h"

@implementation SDZCachedSupplierResponse
	@synthesize supplierCacheTolerance = _supplierCacheTolerance;
	@synthesize cachedTime = _cachedTime;
	@synthesize cacheEntryHitNum = _cacheEntryHitNum;
	@synthesize cacheEntryMissNum = _cacheEntryMissNum;
	@synthesize cacheEntryExpiredNum = _cacheEntryExpiredNum;
	@synthesize cacheRetrievalTime = _cacheRetrievalTime;
	@synthesize supplierRequestNum = _supplierRequestNum;
	@synthesize supplierResponseNum = _supplierResponseNum;
	@synthesize supplierResponseTime = _supplierResponseTime;
	@synthesize candidatePreptime = _candidatePreptime;
	@synthesize otherOverheadTime = _otherOverheadTime;
	@synthesize tpidUsed = _tpidUsed;
	@synthesize matchedCurrency = _matchedCurrency;
	@synthesize matchedLocale = _matchedLocale;
	@synthesize extrapolatedCurrency = _extrapolatedCurrency;
	@synthesize extrapolatedLocale = _extrapolatedLocale;

	- (id) init
	{
		if(self = [super init])
		{
			self.supplierCacheTolerance = nil;

		}
		return self;
	}

	+ (SDZCachedSupplierResponse*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZCachedSupplierResponse*)[[[SDZCachedSupplierResponse alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.supplierCacheTolerance = [Soap getNodeValue: node withName: @"supplierCacheTolerance"];
			self.cachedTime = [[Soap getNodeValue: node withName: @"cachedTime"] longLongValue];
			self.cacheEntryHitNum = [[Soap getNodeValue: node withName: @"cacheEntryHitNum"] intValue];
			self.cacheEntryMissNum = [[Soap getNodeValue: node withName: @"cacheEntryMissNum"] intValue];
			self.cacheEntryExpiredNum = [[Soap getNodeValue: node withName: @"cacheEntryExpiredNum"] intValue];
			self.cacheRetrievalTime = [[Soap getNodeValue: node withName: @"cacheRetrievalTime"] longLongValue];
			self.supplierRequestNum = [[Soap getNodeValue: node withName: @"supplierRequestNum"] intValue];
			self.supplierResponseNum = [[Soap getNodeValue: node withName: @"supplierResponseNum"] intValue];
			self.supplierResponseTime = [[Soap getNodeValue: node withName: @"supplierResponseTime"] longLongValue];
			self.candidatePreptime = [[Soap getNodeValue: node withName: @"candidatePreptime"] longLongValue];
			self.otherOverheadTime = [[Soap getNodeValue: node withName: @"otherOverheadTime"] longLongValue];
			self.tpidUsed = [[Soap getNodeValue: node withName: @"tpidUsed"] intValue];
			self.matchedCurrency = [[Soap getNodeValue: node withName: @"matchedCurrency"] boolValue];
			self.matchedLocale = [[Soap getNodeValue: node withName: @"matchedLocale"] boolValue];
			self.extrapolatedCurrency = [[Soap getNodeValue: node withName: @"extrapolatedCurrency"] boolValue];
			self.extrapolatedLocale = [[Soap getNodeValue: node withName: @"extrapolatedLocale"] boolValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"CachedSupplierResponse"];
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

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];
		if (self.supplierCacheTolerance != nil) [s appendFormat: @" supplierCacheTolerance=\"%@\"", [[self.supplierCacheTolerance stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @" cachedTime=\"%@\"", [NSString stringWithFormat: @"%ld", self.cachedTime]];
		[s appendFormat: @" cacheEntryHitNum=\"%@\"", [NSString stringWithFormat: @"%i", self.cacheEntryHitNum]];
		[s appendFormat: @" cacheEntryMissNum=\"%@\"", [NSString stringWithFormat: @"%i", self.cacheEntryMissNum]];
		[s appendFormat: @" cacheEntryExpiredNum=\"%@\"", [NSString stringWithFormat: @"%i", self.cacheEntryExpiredNum]];
		[s appendFormat: @" cacheRetrievalTime=\"%@\"", [NSString stringWithFormat: @"%ld", self.cacheRetrievalTime]];
		[s appendFormat: @" supplierRequestNum=\"%@\"", [NSString stringWithFormat: @"%i", self.supplierRequestNum]];
		[s appendFormat: @" supplierResponseNum=\"%@\"", [NSString stringWithFormat: @"%i", self.supplierResponseNum]];
		[s appendFormat: @" supplierResponseTime=\"%@\"", [NSString stringWithFormat: @"%ld", self.supplierResponseTime]];
		[s appendFormat: @" candidatePreptime=\"%@\"", [NSString stringWithFormat: @"%ld", self.candidatePreptime]];
		[s appendFormat: @" otherOverheadTime=\"%@\"", [NSString stringWithFormat: @"%ld", self.otherOverheadTime]];
		[s appendFormat: @" tpidUsed=\"%@\"", [NSString stringWithFormat: @"%i", self.tpidUsed]];
		[s appendFormat: @" matchedCurrency=\"%@\"", (self.matchedCurrency)?@"true":@"false"];
		[s appendFormat: @" matchedLocale=\"%@\"", (self.matchedLocale)?@"true":@"false"];
		[s appendFormat: @" extrapolatedCurrency=\"%@\"", (self.extrapolatedCurrency)?@"true":@"false"];
		[s appendFormat: @" extrapolatedLocale=\"%@\"", (self.extrapolatedLocale)?@"true":@"false"];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZCachedSupplierResponse class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.supplierCacheTolerance = nil;
		[super dealloc];
	}

@end