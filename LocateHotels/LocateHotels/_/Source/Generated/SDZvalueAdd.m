/*
	SDZvalueAdd.h
	The implementation of properties and methods for the SDZvalueAdd object.
	Generated by SudzC.com
*/
#import "SDZvalueAdd.h"

@implementation SDZvalueAdd
	@synthesize description = _description;
	@synthesize _id = __id;

	- (id) init
	{
		if(self = [super init])
		{
			self.description = nil;

		}
		return self;
	}

	+ (SDZvalueAdd*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZvalueAdd*)[[[SDZvalueAdd alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.description = [Soap getNodeValue: node withName: @"description"];
			self._id = [[Soap getNodeValue: node withName: @"id"] intValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"valueAdd"];
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
		if (self.description != nil) [s appendFormat: @"<description>%@</description>", [[self.description stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];
		[s appendFormat: @" id=\"%@\"", [NSString stringWithFormat: @"%i", self._id]];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZvalueAdd class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.description = nil;
		[super dealloc];
	}

@end
