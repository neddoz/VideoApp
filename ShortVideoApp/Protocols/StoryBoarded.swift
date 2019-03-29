//
//  StoryBoarded.swift
//  ShortVideoApp
//
//  Created by kayeli dennis on 29/03/2019.
//  Copyright © 2019 kayeli dennis. All rights reserved.
//

import UIKit

protocol StoryboardLoadable {
    static func instantiate(from sb: ShortVideoStoryboards) -> Self
}

extension StoryboardLoadable where Self: UIViewController {
    static func instantiate(from sb: ShortVideoStoryboards)-> Self {
        let name = String(describing: self)
        let storyboard = UIStoryboard(name: sb.rawValue, bundle: Bundle.main)
        guard let vc = storyboard.instantiateViewController(withIdentifier: name) as? Self else {
            fatalError("Failed to instantiate view controller with identifier=\(name) from storyboard \( storyboard )")
        }
        return vc
    }
}

/// All View Controllers conform to this
extension UIViewController: StoryboardLoadable {}
