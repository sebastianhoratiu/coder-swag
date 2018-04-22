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
//class DataServiceOriginal {
//    static let instance = DataServiceOriginal()
//
//    func saySomething() {
//        print("something")
//    }
//}

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
    
    private let hats = [
        Product(image: "hat01.png", title: "Devslopes Logo Graphic Beanie", price: "$18"),
        Product(image: "hat02.png", title: "Devslopes Logo Hat Black", price: "$22"),
        Product(image: "hat03.png", title: "Devslopes Logo Hat White", price: "$22"),
        Product(image: "hat04.png", title: "Devslopes Logo Snapback", price: "$20")
    ]
    
    private let hoodies = [
        Product(image: "hoodie01.png", title: "Devslopes Logo Hoodie Grey", price: "$32"),
        Product(image: "hoodie02.png", title: "Devslopes Logo Hoodie Red", price: "$32"),
        Product(image: "hoodie03.png", title: "Devslopes Hoodie Grey", price: "$32"),
        Product(image: "hoodie04.png", title: "Devslopes Hoodie Grey", price: "$32")
    ]
    
    private let shirts = [
        Product(image: "shirt01.png", title: "Devslopes Logo Shirt Black", price: "$18"),
        Product(image: "shirt02.png", title: "Devslopes Badge Shirt Light Grey", price: "$19"),
        Product(image: "shirt03.png", title: "Devslopes Logo Shirt Red", price: "$18"),
        Product(image: "shirt04.png", title: "Hustle Delegate Grey", price: "$18"),
        Product(image: "shirt04.png", title: "Kickflip Studios Black", price: "$18")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
    private init () {}
}


//class DataService3 {
//    static let categories = [category1, category2, category3]
//
//    private init() {}
//}
