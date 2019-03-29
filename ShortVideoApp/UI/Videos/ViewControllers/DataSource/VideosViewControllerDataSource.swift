//
//  VideosViewControllerDataSource.swift
//  ShortVideoApp
//
//  Created by kayeli dennis on 29/03/2019.
//  Copyright © 2019 kayeli dennis. All rights reserved.
//

import UIKit

extension VideosViewController: UICollectionViewDataSource {
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numberOfRows()
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let dequedCell = collectionView.dequeueReusableCell(withReuseIdentifier: VideoCollectionViewCell.NibName, for: indexPath)
        guard let cell = dequedCell as? VideoCollectionViewCell else {return UICollectionViewCell()}
        cell.configure(with: viewModel.path(for: indexPath.row))
        return cell
    }
}
