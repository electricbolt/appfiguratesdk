// AppDelegate.swift
// SwiftExample Copyright© 2017; Electric Bolt Limited.

import UIKit
import AppfigurateLibrary

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
        
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return APLApplicationOpenURL(url)
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("identifierForVendor=\(UIDevice.current.identifierForVendor!.uuidString)")
        APLApplicationDidFinishLaunchingWithOptions(launchOptions)
        return true
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
}
