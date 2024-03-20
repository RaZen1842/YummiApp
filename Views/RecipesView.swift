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
            Form {
                ForEach(recipes, id: \.self.id) { recipe in
                    NavigationLink("\(recipe.name)", destination: RecipeDetailView(recipe: recipe))
                }
            }
        }
    }
}

#Preview {
    RecipesView(recipes: Recipe.example)
}



