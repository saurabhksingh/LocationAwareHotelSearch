/*
	SDZgetPaymentInfoResponse.h
	The implementation of properties and methods for the SDZgetPaymentInfoResponse object.
	Generated by SudzC.com
*/
#import "SDZgetPaymentInfoResponse.h"

#import "SDZHotelPaymentResponse.h"
@implementation SDZgetPaymentInfoResponse
	@synthesize HotelPaymentResponse = _HotelPaymentResponse;

	- (id) init
	{
		if(self = [super init])
		{
			self.HotelPaymentResponse = nil; // [[SDZHotelPaymentResponse alloc] init];

		}
		return self;
	}

	+ (SDZgetPaymentInfoResponse*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZgetPaymentInfoResponse*)[[[SDZgetPaymentInfoResponse alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.HotelPaymentResponse = [[SDZHotelPaymentResponse createWithNode: [Soap getNode: node withName: @"HotelPaymentResponse"]] object];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"getPaymentInfoResponse"];
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
		if (self.HotelPaymentResponse != nil) [s appendString: [self.HotelPaymentResponse serialize: @"HotelPaymentResponse"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZgetPaymentInfoResponse class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.HotelPaymentResponse = nil;
		[super dealloc];
	}

@end
