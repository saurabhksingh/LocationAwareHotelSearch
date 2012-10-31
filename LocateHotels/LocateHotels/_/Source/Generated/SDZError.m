/*
	SDZError.h
	The implementation of properties and methods for the SDZError object.
	Generated by SudzC.com
*/
#import "SDZError.h"

@implementation SDZError
	@synthesize code = _code;
	@synthesize description = _description;
	@synthesize value = _value;

	- (id) init
	{
		if(self = [super init])
		{
			self.code = nil;
			self.description = nil;
			self.value = nil;

		}
		return self;
	}

	+ (SDZError*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (SDZError*)[[[SDZError alloc] initWithNode: node] autorelease];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.code = [Soap getNodeValue: node withName: @"code"];
			self.description = [Soap getNodeValue: node withName: @"description"];
			self.value = [Soap getNodeValue: node withName: @"value"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"Error"];
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
		if (self.code != nil) [s appendFormat: @"<code>%@</code>", [[self.code stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.description != nil) [s appendFormat: @"<description>%@</description>", [[self.description stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.value != nil) [s appendFormat: @"<value>%@</value>", [[self.value stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[SDZError class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}
	
	- (void) dealloc
	{
		self.code = nil;
		self.description = nil;
		self.value = nil;
		[super dealloc];
	}

@end
