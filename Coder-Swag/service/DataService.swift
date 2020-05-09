//
//  DataService.swift
//  Coder-Swag
//
//  Created by Hossein Ghaedi on 07/05/2020.
//  Copyright © 2020 Hossein Ghaedi. All rights reserved.
//

import Foundation

class DataService{
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        product(title: "Hat Devslops logo Black", price: "$18", imageName: "hat01.png"),
        product(title: "Hat Devslops logo Black&Red", price: "$18", imageName: "hat02.png"),
        product(title: "Hat devslops logo White", price: "$17", imageName: "hat03.png"),
        product(title: "hat Devslops logo Black", price: "$15", imageName: "hat04.png")
    ]
    
    private let shirts = [
        product(title: "Shirt Devslops logo Black", price: "$23", imageName: "shirt01.png"),
        product(title: "Shirt Devslops Logo Gray", price: "$24", imageName: "shirt02.png"),
        product(title: "Shirt Devslops Logo Red", price: "$24", imageName: "shirt03.png"),
        product(title: "Shirt Devslops Logo Dark Gray", price: "$24", imageName: "shirt04.png"),
        product(title: "Shirt Devslops Logo Black", price: "$25", imageName: "shirt05.png")
        
    ]
    
    private let hoodies = [
        product(title: "Hoodie Dark Gray", price: "$24", imageName: "hoodie01.png"),
        product(title: "Hoodie Red", price: "$29", imageName: "hoodie02.png"),
        product(title: "Hoodie Gray", price: "$31", imageName: "hoodie03.png"),
        product(title: "Hoodie Black", price: "$29", imageName: "hoodie04.png")
        
    ]
    
    private let digitalGoods = [product]()
    
    func getCategories() -> [Category]{
        
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS": return getHats()
        case "HOODIES": return getHoodies()
        case "DIGITAL": return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    
    func getShirts() -> [product] {
        return shirts
    }
    
    func getHoodies() -> [product] {
        return hoodies
    }
    
    func getHats() -> [product] {
        return hats
    }
    
    func getDigitalGoods() -> [product] {
        return digitalGoods
    }
}
