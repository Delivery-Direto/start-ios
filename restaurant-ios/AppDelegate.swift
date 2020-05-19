//
//  AppDelegate.swift
//  restaurant-ios
//
//  Created by Abraao on 19/05/20.
//  Copyright © 2020 Abraao. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = MainViewController()
        window?.makeKeyAndVisible()
        
        return true
    }
}

