//
//  ViewModel.swift
//  MealPack
//
//  Created by Thomas Stubblefield on 7/8/23.
//


import Foundation

//This is the view model
class ViewModel: ObservableObject {
    @Published private var model = Model()

    var recipes: [Recipe?] {
        return model.recipes
    }
    func getRecipes() {
        model.getRecipes()
        
    }
    func addRecipe() {
        print("add Recipe")
        
        //Add post

        //Update posts
        

        //Return complete post
    }

}
