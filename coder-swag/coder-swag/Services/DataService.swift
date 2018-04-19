//
//  DataService.swift
//  coder-swag
//
//  Created by Sebastian Horatiu on 14/04/2018.
//  Copyright © 2018 Sebastian Horatiu. All rights reserved.
//

import Foundation

// We'll implement the Service design pattern
// This one is the original implementation presented in the cource
class DataServiceOriginal {
    static let instance = DataServiceOriginal()

    func saySomething() {
        print("something")
    }
}

// I found that the abouve is not a precise inmplementation and that the below one is more precise
// *https://medium.com/if-let-swift-programming/the-swift-singleton-pattern-442124479b19

final class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
    
    private init () {}
}


//class DataService3 {
//    static let categories = [category1, category2, category3]
//
//    private init() {}
//}
