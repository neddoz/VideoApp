//
//  MainTabBarViewController.swift
//  ShortVideoApp
//
//  Created by kayeli dennis on 29/03/2019.
//  Copyright © 2019 kayeli dennis. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    init(coordinators: [Coordinator]) {
        super.init(nibName: nil, bundle: nil)
        self.viewControllers = coordinators.compactMap{return $0.navigationController}
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
