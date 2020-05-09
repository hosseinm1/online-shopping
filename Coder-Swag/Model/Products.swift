//
//  Products.swift
//  Coder-Swag
//
//  Created by Hossein Ghaedi on 08/05/2020.
//  Copyright © 2020 Hossein Ghaedi. All rights reserved.
//

import Foundation

struct product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
