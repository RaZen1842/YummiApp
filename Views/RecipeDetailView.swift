//
//  RecipeDetailView.swift
//  YummiApp
//
//  Created by Veturi, Shreyas (HJRM) on 06/03/2024.
//

import SwiftUI

struct RecipeDetailView: View {
    @State var recipes: [Recipe]
    
    var body: some View {
        List {
            ForEach(recipes, id: \.self.name) { recipe in
                Text("""
**\(recipe.name)**
Rating: \(recipe.rating)/5
Favourite: \(recipe.isFavourite ? "Yes": "No")

""")
            }
        }
    }
}

#Preview {
    RecipeDetailView(recipes: Recipe.example)
}
