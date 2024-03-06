//
//  RecipiesView.swift
//  YummiApp
//
//  Created by Veturi, Shreyas (HJRM) on 27/02/2024.
//

import Foundation
import SwiftUI

struct RecipesView: View {
    
    @State var recipes: [Recipe]
    var body: some View {
        NavigationStack {
            List(recipes) { recipe in
                NavigationLink(recipe.name) {
                    RecipeDetailView(recipes: recipes)
                }
            }
        }
    }
}

#Preview {
    RecipesView(recipes: Recipe.example)
}



