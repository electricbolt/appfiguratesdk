/*******************************************************************************
 * AppDelegate.h                                                               *
 * AppfigurateExample Copyright© 2013; Electric Bolt Limited.                  *
 ******************************************************************************/

#import "AppDelegate.h"
#import "Appfigurate.h"
#import "ExampleViewController.h"

/**
 * Appfigurate performs method swizzling on UIApplicationDelegate to automatically
 * invoke APLApplicationDidFinishLaunchingWithOptions() and APLApplicationOpenURL().
 * Developers who prefer not to use swizzling must do the following:
 * - Add the Boolean APLInstallDelegateMethods=NO in your app's Info.plist file.
 * - Call APLApplicationDidFinishLaunchingWithOptions() in your app's delegate
 *   application:didFinishLaunchingWithOptions: method.
 * - Call APLApplicationOpenURL() in your app's delegate
 *   application:openURL:sourceApplication:annotation: method (OS8) or
 *   application:openURL:options: method (OS9+).
 */

@implementation AppDelegate

// OS8
//- (BOOL) application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
//    NSLog(@"AppfigurateExample: application:openURL:sourceApplication:annotation:");
//    if (APLApplicationOpenURL(url) == YES)
//      return YES;
//    return NO;
//}

// OS9
//- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
//    NSLog(@"AppfigurateExample: application:openURL:options:");
//    if (APLApplicationOpenURL(url) == YES)
//      return YES;
//    return NO;
//}

//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    NSLog(@"AppfigurateExample: application:didFinishLaunchingWithOptions:");
//    APLSetLogging(YES);
//    APLApplicationDidFinishLaunchingWithOptions(launchOptions);
//    return YES;
//}

@end
