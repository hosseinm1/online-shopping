//
//  Category.swift
//  Coder-Swag
//
//  Created by Hossein Ghaedi on 07/05/2020.
//  Copyright © 2020 Hossein Ghaedi. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String , imageName: String) {
        self.title = title
        self.imageName = imageName
        
        
    }
}
