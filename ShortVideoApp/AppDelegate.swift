//
//  AppDelegate.swift
//  ShortVideoApp
//
//  Created by kayeli dennis on 29/03/2019.
//  Copyright © 2019 kayeli dennis. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var coordinator: AppCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        coordinator = .init()

        // create a basic UIWindow and activate it
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = coordinator?.navigationController
        window?.makeKeyAndVisible()
       
        return true
    }

}

