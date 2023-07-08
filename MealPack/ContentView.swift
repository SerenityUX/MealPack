//
//  ContentView.swift
//  MealPack
//
//  Created by Thomas Stubblefield on 7/8/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()

    
    var body: some View {
        NavigationView{
            VStack {
                ForEach(viewModel.recipes, id: \.self) { recipe in
                    RecipePreview(recipe: recipe)
                        .padding(.bottom, 4.0)
                        .padding(.top, 4.0)
                    Divider()
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Recipes")
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


