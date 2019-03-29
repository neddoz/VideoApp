//
//  VideoCollectionViewCell.swift
//  ShortVideoApp
//
//  Created by kayeli dennis on 29/03/2019.
//  Copyright © 2019 kayeli dennis. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class VideoCollectionViewCell: UICollectionViewCell, NibInstantiatable {
    
    @IBOutlet var favoriteButton: UIButton!
    @IBOutlet var addUserButton: UIButton!
    @IBOutlet var shareButton: UIButton!
    
    var player: AVPlayer?
    
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
        
        // Tap gesture
        let gesture = UITapGestureRecognizer.init(target: self, action: #selector(togglePlayer))
        self.addGestureRecognizer(gesture)
    }
    
    @objc
    func togglePlayer() {
        guard let unWrappedPlayer = player else {return}
        if unWrappedPlayer.isPlaying  {
            unWrappedPlayer.pause()
        } else {
            unWrappedPlayer.play()
        }
    }
    
    func configure(with path: String) {
        player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.bounds
        self.layer.insertSublayer(playerLayer, at: 0)
        player?.play()
    }
}
