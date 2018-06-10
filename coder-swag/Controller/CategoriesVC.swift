//
//  ViewController.swift
//  coder-swag
//
//  Created by Juan Bernardo Cruz Ortiz on 6/8/18.
//  Copyright © 2018 Juan Bernardo Cruz Ortiz. All rights reserved.
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
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            let categories = DataService.instance.getCategories()
            let category = categories[indexPath.row]
            //Las 2 lineas pasadas se pudieron poner de una forma mas sencilla de redaccion de codigo asi: let category = Data.Service.instance.getCategories()[indexPath.row]
            
            cell.updateViews(category: category)
            
            //La linea de arriba se estan haciendo para administrar de manera automatica la actualizacion de las celdas pero tambien podria haberse de manera manual recorriendo la tabla y asignando el valor asi: cell.imageView.image = category.imageName
            
            return cell
        } else {
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let productsVC = segue.destination as? ProductsVC{
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            assert(sender as? Category != nil)
            productsVC.initProducts(category: sender as! Category)
            
            
        }
    }
}

