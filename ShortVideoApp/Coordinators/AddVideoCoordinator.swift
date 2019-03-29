//
//  AddVideoCoordinator.swift
//  ShortVideoApp
//
//  Created by kayeli dennis on 29/03/2019.
//  Copyright © 2019 kayeli dennis. All rights reserved.
//

import UIKit

class AddVideoCoordinator: Coordinator {
    
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
        let VC = AddVideoViewController.instantiate(from: .videos)
        VC.title = ""
        VC.tabBarItem.image = UIImage(named: "add-video")
        VC.tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        VC.tabBarItem.isEnabled = true
        navigationController.viewControllers = [VC]
    }
}
