//
//  RecipeCell.swift
//  GoodEatins
//
//  Created by Cristian Sedano Arenas on 15/05/2020.
//  Copyright © 2020 Cristian Sedano Arenas. All rights reserved.
//

import UIKit

class RecipeCell: UICollectionViewCell {
    
    @IBOutlet weak var recipeImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        recipeImage.layer.cornerRadius = 10
    }
    
    func configureCell(recipe : Recipe) {
        
        recipeImage.image = UIImage(named: recipe.imageName)
    }
}
