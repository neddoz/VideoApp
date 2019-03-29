//
//  Coordinator.swift
//  ShortVideoApp
//
//  Created by kayeli dennis on 29/03/2019.
//  Copyright © 2019 kayeli dennis. All rights reserved.
//

import UIKit

public protocol Coordinator: class {
    var navigationController: UINavigationController {get set}
    func start()
}
