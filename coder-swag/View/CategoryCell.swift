//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Juan Bernardo Cruz Ortiz on 6/8/18.
//  Copyright © 2018 Juan Bernardo Cruz Ortiz. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
