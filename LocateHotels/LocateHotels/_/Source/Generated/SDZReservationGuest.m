/*
	SDZReservationGuest.h
	The implementation of properties and methods for the SDZReservationGuest object.
	Generated by SudzC.com
*/
#import "SDZReservationGuest.h"

@implementation SDZReservationGuest
	@synthesize firstName = _firstName;
	@synthesize lastName = _lastName;

	- (id) init
	{
		if(self = [super init])
		{
			self.firstName = nil;
			self.lastName = nil;

		}
		return self;
	}

	+ (SDZReservationGuest*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZReservationGuest*)[[[SDZReservationGuest alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.firstName = [Soap getNodeValue: node withName: @"firstName"];
			self.lastName = [Soap getNodeValue: node withName: @"lastName"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"ReservationGuest"];
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
		if (self.firstName != nil) [s appendFormat: @"<firstName>%@</firstName>", [[self.firstName stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.lastName != nil) [s appendFormat: @"<lastName>%@</lastName>", [[self.lastName stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZReservationGuest class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.firstName = nil;
		self.lastName = nil;
		[super dealloc];
	}

@end
