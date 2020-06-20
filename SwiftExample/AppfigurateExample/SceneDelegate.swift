// SceneDelegate.swift
// SceneExample Copyright© 2020; Electric Bolt Limited.

import UIKit
import AppfigurateLibrary

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    @available(iOS 13.0, *)
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        if let url = URLContexts.first?.url {
            APLApplicationOpenURL(url)
        }
    }

}

