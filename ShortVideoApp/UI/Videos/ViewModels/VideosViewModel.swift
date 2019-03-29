//
//  VideosViewModel.swift
//  ShortVideoApp
//
//  Created by kayeli dennis on 29/03/2019.
//  Copyright © 2019 kayeli dennis. All rights reserved.
//

import Foundation

struct VideosViewModel {
    
    var paths: [String]
    
    init() {
        let paths = Bundle.main.paths(forResourcesOfType: "mp4", inDirectory: nil)
        self.paths = paths
    }
    
    func numberOfRows()-> Int {
        return paths.count
    }

    func path(for item: Int)-> String {
        return paths[item]
    }
}
