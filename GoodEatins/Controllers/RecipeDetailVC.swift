//
//  RecipeDetailVC.swift
//  GoodEatins
//
//  Created by Cristian Sedano Arenas on 18/05/2020.
//  Copyright © 2020 Cristian Sedano Arenas. All rights reserved.
//

import UIKit

class RecipeDetailVC: UIViewController {
    
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var recipeTitle: UILabel!
    @IBOutlet weak var recipeInstructions: UILabel!
    
    var selectedRecipe : Recipe!

    override func viewDidLoad() {
        super.viewDidLoad()

        recipeImage.image = UIImage(named: selectedRecipe.imageName)
        recipeTitle.text = selectedRecipe.title
        recipeInstructions.text = selectedRecipe.instructions
    }
}
