/*
	SDZHotelRoomCancellationRequest.h
	The implementation of properties and methods for the SDZHotelRoomCancellationRequest object.
	Generated by SudzC.com
*/
#import "SDZHotelRoomCancellationRequest.h"

@implementation SDZHotelRoomCancellationRequest
	@synthesize itineraryId = _itineraryId;
	@synthesize email = _email;
	@synthesize confirmationNumber = _confirmationNumber;
	@synthesize reason = _reason;

	- (id) init
	{
		if(self = [super init])
		{
			self.email = nil;
			self.confirmationNumber = nil;
			self.reason = nil;

		}
		return self;
	}

	+ (SDZHotelRoomCancellationRequest*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZHotelRoomCancellationRequest*)[[[SDZHotelRoomCancellationRequest alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.itineraryId = [[Soap getNodeValue: node withName: @"itineraryId"] longLongValue];
			self.email = [Soap getNodeValue: node withName: @"email"];
			self.confirmationNumber = [Soap getNodeValue: node withName: @"confirmationNumber"];
			self.reason = [Soap getNodeValue: node withName: @"reason"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"HotelRoomCancellationRequest"];
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
		if (self.email != nil) [s appendFormat: @"<email>%@</email>", [[self.email stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.confirmationNumber != nil) [s appendFormat: @"<confirmationNumber>%@</confirmationNumber>", [[self.confirmationNumber stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.reason != nil) [s appendFormat: @"<reason>%@</reason>", [[self.reason stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZHotelRoomCancellationRequest class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.email = nil;
		self.confirmationNumber = nil;
		self.reason = nil;
		[super dealloc];
	}

@end
