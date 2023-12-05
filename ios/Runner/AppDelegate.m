#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"
#import "FlutterNativeLib.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.

    FlutterViewController *controller = (FlutterViewController *)self.window.rootViewController;
    [FlutterNativeLib registerWith:controller];

  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
