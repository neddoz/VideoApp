//
//  AppCoordinator.swift
//  ShortVideoApp
//
//  Created by kayeli dennis on 29/03/2019.
//  Copyright © 2019 kayeli dennis. All rights reserved.
//

import UIKit

class AppCoordinator: Coordinator {
   
    // MARK:- Variables
   
    var navigationController: UINavigationController
    var children: [Coordinator] = []
   
    // MARK:- Initializer
    
    init(nav: UINavigationController = UINavigationController()) {
       
        self.navigationController = nav
       
        self.children = [VideosCoordinator(), AddVideoCoordinator()]
        start()
    }

    // MARK:- Instance methods
   
    func start() {
        let tabBar = MainTabBarViewController(coordinators: children)
        self.navigationController.viewControllers = [tabBar]
    }
}
