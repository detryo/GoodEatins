//
//  CategoryCell.swift
//  GoodEatins
//
//  Created by Cristian Sedano Arenas on 14/05/2020.
//  Copyright © 2020 Cristian Sedano Arenas. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        categoryImage.layer.cornerRadius = 10
    }
    
    func configureCell(category: FoodCategory){
        
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
}
