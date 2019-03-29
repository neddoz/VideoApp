//
//  NibInstantiatable.swift
//  ShortVideoApp
//
//  Created by kayeli dennis on 29/03/2019.
//  Copyright © 2019 kayeli dennis. All rights reserved.
//

import Foundation

import UIKit

protocol NibInstantiatable {
    static var NibName: String { get }
}

extension NibInstantiatable {
    
    static var NibName: String { return String(describing: self) }
    
    static func instantiate() -> Self {
        return instantiateWithName(name: NibName)
    }
    
    static func instantiateWithOwner(owner: AnyObject?) -> Self {
        return instantiateWithName(name: NibName, owner: owner)
    }
    
    static func instantiateWithName(name: String, owner: AnyObject? = nil) -> Self {
        let nib = UINib(nibName: name, bundle: nil)
        guard let view = nib.instantiate(withOwner: owner, options: nil).first as? Self else {
            fatalError("failed to load \(name) nib file")
        }
        return view
    }
}
