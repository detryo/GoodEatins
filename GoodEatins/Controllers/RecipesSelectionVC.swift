//
//  RecipesSelectionVC.swift
//  GoodEatins
//
//  Created by Cristian Sedano Arenas on 14/05/2020.
//  Copyright © 2020 Cristian Sedano Arenas. All rights reserved.
//

import UIKit

class RecipesSelectionVC: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var selectedCategory : String!
    var recipes : [Recipe]!
    let data = DataSet()
    var recipeToPass : Recipe! //

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        recipes = data.getRecipes(forCategoryTitle: selectedCategory)
    }

}

extension RecipesSelectionVC : UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return recipes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecipeCell", for: indexPath) as? RecipeCell {
            
            let recipe = recipes[indexPath.item]
            cell.configureCell(recipe: recipe)
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = view.bounds.width
        let cellDimension = (width / 2) - 15
        return CGSize(width: cellDimension, height: cellDimension)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        recipeToPass = recipes[indexPath.item]
            
        performSegue(withIdentifier: "ToRecipeSelection", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let detailVC = segue.destination as? RecipeDetailVC {
            
            detailVC.selectedRecipe = recipeToPass
        }
    }
}
