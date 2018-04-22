 //
//  CategoryCell.swift
//  coder-swag
//
//  Created by Sebastian Horatiu on 12/04/2018.
//  Copyright © 2018 Sebastian Horatiu. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category) {
        categoryTitle.text = category.title
        categoryImage.image = UIImage(named: category.imageName)
    }

}
