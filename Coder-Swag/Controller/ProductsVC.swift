//
//  ProductsVC.swift
//  Coder-Swag
//
//  Created by Hossein Ghaedi on 09/05/2020.
//  Copyright © 2020 Hossein Ghaedi. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var productsCV: UICollectionView!
    
    private(set) public var products = [product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsCV.delegate = self
        productsCV.dataSource = self
        
    }
    

    func initProducts(category: Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            let product = products[indexPath.row]
            cell.updateView(product: product)
            return cell
        }
        return ProductCell()
    }
    
    
    
}
