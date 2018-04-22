//
//  Product.swift
//  coder-swag
//
//  Created by Sebastian Horatiu on 22/04/2018.
//  Copyright © 2018 Sebastian Horatiu. All rights reserved.
//

import Foundation

class Product {
    private(set) var imageName: String
    private(set) var title: String
    private(set) var price: String

    init(image:String, title: String, price: String) {
        self.imageName = image
        self.title = title
        self.price = price
    }
}
