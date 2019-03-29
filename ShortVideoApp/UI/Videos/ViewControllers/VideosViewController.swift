//
//  VideosViewController.swift
//  ShortVideoApp
//
//  Created by kayeli dennis on 29/03/2019.
//  Copyright © 2019 kayeli dennis. All rights reserved.
//

import UIKit

class VideosViewController: UIViewController {

    @IBOutlet var videosCollectionView: UICollectionView!
    @IBOutlet var collectionViewTopConstraint: NSLayoutConstraint!
    @IBOutlet var collectionViewBottomConstraint: NSLayoutConstraint!
   
    // MARK:-Variables
    var viewModel: VideosViewModel = .init()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpConstraints()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    private func setUpConstraints() {
        let navBarHeight: CGFloat = self.navigationController?.navigationBar.frame.height ?? 0
        let statusBarHeight: CGFloat = UIApplication.shared.statusBarFrame.height
        collectionViewTopConstraint.constant = (navBarHeight + statusBarHeight + statusBarHeight)
        
        let tabBarHeight: CGFloat = self.tabBarController?.tabBar.frame.height ?? 0
        collectionViewBottomConstraint.constant = -(tabBarHeight)
    }
}
