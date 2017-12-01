/*******************************************************************************
 * ExtensionDelegate.m                                                         *
 * WatchExample Extension Copyright© 2016; Electric Bolt Limited.              *
 ******************************************************************************/

#import "ExtensionDelegate.h"
#import "Appfigurate.h"

/**
 * Appfigurate performs method swizzling on WKExtensionDelegate to automatically
 * invoke APLApplicationDidFinishLaunching(). Developers who prefer not to use
 * swizzling must do the following:
 * - Add the Boolean APLInstallDelegateMethods=NO in your extension's Info.plist
 *   file.
 * - Call APLApplicationDidFinishLaunching() in your extension's delegate
 *   applicationDidFinishLaunching method.
 */

@implementation ExtensionDelegate

//- (void) applicationDidFinishLaunching {
//    NSLog(@"ExtensionDelegate: applicationDidFinishLaunching");
//    APLApplicationDidFinishLaunching();
//}

@end
