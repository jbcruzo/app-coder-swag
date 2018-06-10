//
//  ProductCell.swift
//  coder-swag
//
//  Created by Juan Bernardo Cruz Ortiz on 6/9/18.
//  Copyright © 2018 Juan Bernardo Cruz Ortiz. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product){
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
    
}
