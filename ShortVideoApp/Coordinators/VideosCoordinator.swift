//
//  VideosCoordinator.swift
//  ShortVideoApp
//
//  Created by kayeli dennis on 29/03/2019.
//  Copyright © 2019 kayeli dennis. All rights reserved.
//

import UIKit

class VideosCoordinator: Coordinator {
    
    // MARK:- Variables
    
    var navigationController: UINavigationController
    
    // MARK:- Initializer
    
    init(nav: UINavigationController = UINavigationController()) {
        self.navigationController = nav
        start()
    }
    
    // MARK:- Instance methods
    
    func start() {
        configure()
    }
    
    public func configure() {
        let VC = VideosViewController.instantiate(from: .videos)
        VC.title = ""
        VC.tabBarItem.image = UIImage(named: "home")
        VC.tabBarItem.isEnabled = true
        navigationController.viewControllers = [VC]
    }
}
