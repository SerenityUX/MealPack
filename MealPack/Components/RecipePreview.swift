//
//  RecipePreview.swift
//  MealPack
//
//  Created by Thomas Stubblefield on 7/8/23.
//

import SwiftUI

struct RecipePreview: View {
    var recipe: Recipe? // replace Recipe with the correct type you use

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 6) { // Adjust the spacing here
                Text(recipe?.name ?? "")
                    .font(.system(size: 24))
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                
                HStack {
                    AsyncImage(urlString: "https://cloud-1idte52h8-hack-club-bot.vercel.app/0logo.png")
                        .frame(width: 28, height: 28)
                        .cornerRadius(14)

                    Text("Author Name")
                        .font(.subheadline)
                }
                .padding(.trailing, 0) // Remove the trailing padding
            }
            .padding(.vertical, 8) // Adjust the vertical padding here
            Spacer()
            AsyncImage(urlString: recipe?.thumbnail ?? "")
                .frame(width: 83, height: 96)
                .cornerRadius(14)
        }
    }
}
