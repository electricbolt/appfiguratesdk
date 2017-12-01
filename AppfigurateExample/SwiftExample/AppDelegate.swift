/*******************************************************************************
 * AppDelegate.swift                                                           *
 * SwiftExample Copyright© 2017; Electric Bolt Limited.                        *
 ******************************************************************************/

import UIKit

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

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

//    // OS8
//    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
//        print("SwiftExample: application:openURL:sourceApplication:annotation:")
//        if APLApplicationOpenURL(url) {
//            return true
//        }
//        return false
//    }

//    // OS9
//    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
//        print("SwiftExample: application:openURL:options:")
//        if APLApplicationOpenURL(url) {
//            return true
//        }
//        return false
//    }

//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
//        print("SwiftExample: application:didFinishLaunchingWithOptions:")
//        APLSetLogging(true)
//        APLApplicationDidFinishLaunchingWithOptions(launchOptions)
//        return true
//    }

}

