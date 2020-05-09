//
//  ViewController.swift
//  Coder-Swag
//
//  Created by Hossein Ghaedi on 06/05/2020.
//  Copyright © 2020 Hossein Ghaedi. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var categoryTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell") as? CategoryCell{
            let category = DataService.instance.getCategories()[indexPath.row]
            
            cell.updateViews(category: category)
            return cell
            
        }else{
            return CategoryCell()
        }
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            
            let barBtn = UIBarButtonItem()
            barBtn.title = "Back"
            navigationItem.backBarButtonItem = barBtn
            
            assert(sender as? Category != nil)
            productsVC.initProducts(category: sender as! Category)
            
            
            
            
        }
    }
    
    // EDIT CELL SIZE
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 215
    }
    
    

}

