//
//  Category.swift
//  coder-swag
//
//  Created by Sebastian Horatiu on 14/04/2018.
//  Copyright © 2018 Sebastian Horatiu. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
