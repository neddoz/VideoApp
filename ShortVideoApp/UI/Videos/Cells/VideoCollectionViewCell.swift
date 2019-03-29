//
//  VideoCollectionViewCell.swift
//  ShortVideoApp
//
//  Created by kayeli dennis on 29/03/2019.
//  Copyright © 2019 kayeli dennis. All rights reserved.
//

import UIKit

class VideoCollectionViewCell: UICollectionViewCell, NibInstantiatable {
    
    @IBOutlet var favoriteButton: UIButton!
    @IBOutlet var addUserButton: UIButton!
    @IBOutlet var shareButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpViews()
    }
    
    // MARK:- private functions
    
    private func setUpViews() {
        
        // favorite button
        favoriteButton.imageView?.contentMode = .scaleAspectFit
        
        // addUserButton
        addUserButton.imageView?.contentMode = .scaleAspectFit
        
        // shareButton
        shareButton.imageView?.contentMode = .scaleAspectFit
    }
}
