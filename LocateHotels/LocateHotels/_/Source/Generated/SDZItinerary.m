/*
	SDZItinerary.h
	The implementation of properties and methods for the SDZItinerary object.
	Generated by SudzC.com
*/
#import "SDZItinerary.h"

#import "SDZCustomer.h"
#import "SDZHotelConfirmation.h"
@implementation SDZItinerary
	@synthesize itineraryId = _itineraryId;
	@synthesize affiliateId = _affiliateId;
	@synthesize creationDate = _creationDate;
	@synthesize creationTime = _creationTime;
	@synthesize itineraryStartDate = _itineraryStartDate;
	@synthesize itineraryEndDate = _itineraryEndDate;
	@synthesize affiliateCustomerId = _affiliateCustomerId;
	@synthesize Customer = _Customer;
	@synthesize HotelConfirmation = _HotelConfirmation;

	- (id) init
	{
		if(self = [super init])
		{
			self.creationDate = nil;
			self.creationTime = nil;
			self.itineraryStartDate = nil;
			self.itineraryEndDate = nil;
			self.affiliateCustomerId = nil;
			self.Customer = nil; // [[SDZCustomer alloc] init];
			self.HotelConfirmation = nil; // [[SDZHotelConfirmation alloc] init];

		}
		return self;
	}

	+ (SDZItinerary*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZItinerary*)[[[SDZItinerary alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.itineraryId = [[Soap getNodeValue: node withName: @"itineraryId"] longLongValue];
			self.affiliateId = [[Soap getNodeValue: node withName: @"affiliateId"] longLongValue];
			self.creationDate = [Soap getNodeValue: node withName: @"creationDate"];
			self.creationTime = [Soap getNodeValue: node withName: @"creationTime"];
			self.itineraryStartDate = [Soap getNodeValue: node withName: @"itineraryStartDate"];
			self.itineraryEndDate = [Soap getNodeValue: node withName: @"itineraryEndDate"];
			self.affiliateCustomerId = [Soap getNodeValue: node withName: @"affiliateCustomerId"];
			self.Customer = [[SDZCustomer createWithNode: [Soap getNode: node withName: @"Customer"]] object];
			self.HotelConfirmation = [[SDZHotelConfirmation createWithNode: [Soap getNode: node withName: @"HotelConfirmation"]] object];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"Itinerary"];
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
		[s appendFormat: @"<affiliateId>%@</affiliateId>", [NSString stringWithFormat: @"%ld", self.affiliateId]];
		if (self.creationDate != nil) [s appendFormat: @"<creationDate>%@</creationDate>", [[self.creationDate stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.creationTime != nil) [s appendFormat: @"<creationTime>%@</creationTime>", [[self.creationTime stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.itineraryStartDate != nil) [s appendFormat: @"<itineraryStartDate>%@</itineraryStartDate>", [[self.itineraryStartDate stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.itineraryEndDate != nil) [s appendFormat: @"<itineraryEndDate>%@</itineraryEndDate>", [[self.itineraryEndDate stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.affiliateCustomerId != nil) [s appendFormat: @"<affiliateCustomerId>%@</affiliateCustomerId>", [[self.affiliateCustomerId stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.Customer != nil) [s appendString: [self.Customer serialize: @"Customer"]];
		if (self.HotelConfirmation != nil) [s appendString: [self.HotelConfirmation serialize: @"HotelConfirmation"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZItinerary class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.creationDate = nil;
		self.creationTime = nil;
		self.itineraryStartDate = nil;
		self.itineraryEndDate = nil;
		self.affiliateCustomerId = nil;
		self.Customer = nil;
		self.HotelConfirmation = nil;
		[super dealloc];
	}

@end
