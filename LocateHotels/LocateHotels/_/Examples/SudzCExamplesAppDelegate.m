
#import "SudzCExamplesAppDelegate.h"
#import "SDZHotelServicesImplServiceExample.h"


@implementation SudzCExamplesAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(UIApplication *)application {

SDZHotelServicesImplServiceExample* example1 = [[[SDZHotelServicesImplServiceExample alloc] init] autorelease];
		[example1 run];


	[window makeKeyAndVisible];
}

- (void)dealloc {
	[window release];
	[super dealloc];
}

@end
			