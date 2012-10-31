/*
	SDZgetCancellation.h
	The implementation of properties and methods for the SDZgetCancellation object.
	Generated by SudzC.com
*/
#import "SDZgetCancellation.h"

#import "SDZHotelRoomCancellationRequest.h"
@implementation SDZgetCancellation
	@synthesize HotelRoomCancellationRequest = _HotelRoomCancellationRequest;

	- (id) init
	{
		if(self = [super init])
		{
			self.HotelRoomCancellationRequest = nil; // [[SDZHotelRoomCancellationRequest alloc] init];

		}
		return self;
	}

	+ (SDZgetCancellation*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZgetCancellation*)[[[SDZgetCancellation alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.HotelRoomCancellationRequest = [[SDZHotelRoomCancellationRequest createWithNode: [Soap getNode: node withName: @"HotelRoomCancellationRequest"]] object];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"getCancellation"];
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
		if (self.HotelRoomCancellationRequest != nil) [s appendString: [self.HotelRoomCancellationRequest serialize: @"HotelRoomCancellationRequest"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZgetCancellation class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.HotelRoomCancellationRequest = nil;
		[super dealloc];
	}

@end
