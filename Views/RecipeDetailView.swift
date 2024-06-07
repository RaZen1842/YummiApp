//
//  RecipeDetailView.swift
//  YummiApp
//
//  Created by Veturi, Shreyas (HJRM) on 06/03/2024.
//

import SwiftUI

struct RecipeDetailView: View {
    //change to JSON later
    var recipe: Recipe
    
    var body: some View {
        Text(recipe.name)
            .bold()
        
        Form {
            VStack {
                Text(recipe.displayProperties())
            }
        }
    }
}
