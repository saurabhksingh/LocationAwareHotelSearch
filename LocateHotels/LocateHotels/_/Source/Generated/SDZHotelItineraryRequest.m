/*
	SDZHotelItineraryRequest.h
	The implementation of properties and methods for the SDZHotelItineraryRequest object.
	Generated by SudzC.com
*/
#import "SDZHotelItineraryRequest.h"

#import "SDZItineraryQuery.h"
@implementation SDZHotelItineraryRequest
	@synthesize itineraryId = _itineraryId;
	@synthesize lastName = _lastName;
	@synthesize email = _email;
	@synthesize affiliateConfirmationId = _affiliateConfirmationId;
	@synthesize affiliateCustomerId = _affiliateCustomerId;
	@synthesize ItineraryQuery = _ItineraryQuery;
	@synthesize confirmationExtras = _confirmationExtras;

	- (id) init
	{
		if(self = [super init])
		{
			self.lastName = nil;
			self.email = nil;
			self.affiliateConfirmationId = nil;
			self.affiliateCustomerId = nil;
			self.ItineraryQuery = nil; // [[SDZItineraryQuery alloc] init];
			self.confirmationExtras = nil;

		}
		return self;
	}

	+ (SDZHotelItineraryRequest*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZHotelItineraryRequest*)[[[SDZHotelItineraryRequest alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.itineraryId = [[Soap getNodeValue: node withName: @"itineraryId"] longLongValue];
			self.lastName = [Soap getNodeValue: node withName: @"lastName"];
			self.email = [Soap getNodeValue: node withName: @"email"];
			self.affiliateConfirmationId = [Soap getNodeValue: node withName: @"affiliateConfirmationId"];
			self.affiliateCustomerId = [Soap getNodeValue: node withName: @"affiliateCustomerId"];
			self.ItineraryQuery = [[SDZItineraryQuery createWithNode: [Soap getNode: node withName: @"ItineraryQuery"]] object];
			self.confirmationExtras = [Soap getNodeValue: node withName: @"confirmationExtras"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"HotelItineraryRequest"];
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
		[s appendFormat: @"<itineraryId>%@</itineraryId>", [NSString stringWithFormat: @"%ld", self.itineraryId]];
		if (self.lastName != nil) [s appendFormat: @"<lastName>%@</lastName>", [[self.lastName stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.email != nil) [s appendFormat: @"<email>%@</email>", [[self.email stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.affiliateConfirmationId != nil) [s appendFormat: @"<affiliateConfirmationId>%@</affiliateConfirmationId>", [[self.affiliateConfirmationId stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.affiliateCustomerId != nil) [s appendFormat: @"<affiliateCustomerId>%@</affiliateCustomerId>", [[self.affiliateCustomerId stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.ItineraryQuery != nil) [s appendString: [self.ItineraryQuery serialize: @"ItineraryQuery"]];
		if (self.confirmationExtras != nil) [s appendFormat: @"<confirmationExtras>%@</confirmationExtras>", [[self.confirmationExtras stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZHotelItineraryRequest class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.lastName = nil;
		self.email = nil;
		self.affiliateConfirmationId = nil;
		self.affiliateCustomerId = nil;
		self.ItineraryQuery = nil;
		self.confirmationExtras = nil;
		[super dealloc];
	}

@end