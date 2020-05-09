//
//  ProductCell.swift
//  Coder-Swag
//
//  Created by Hossein Ghaedi on 08/05/2020.
//  Copyright © 2020 Hossein Ghaedi. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateView(product: product){
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
}
