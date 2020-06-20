// AppDelegate.h
// AppfigurateExample Copyright© 2013; Electric Bolt Limited.

@import AppfigurateLibrary;
#import "AppDelegate.h"
#import "ExampleViewController.h"

@implementation AppDelegate

- (BOOL) application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    return APLApplicationOpenURL(url);
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"identifierForVendor=%@", [[[UIDevice currentDevice] identifierForVendor] UUIDString]);
    APLApplicationDidFinishLaunchingWithOptions(launchOptions);
    return YES;
}

- (UISceneConfiguration *) application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options API_AVAILABLE(ios(13.0)) {
    return [[UISceneConfiguration alloc] initWithName: @"Default Configuration" sessionRole: connectingSceneSession.role];
}

@end
