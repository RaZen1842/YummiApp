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
        List {
            ForEach(recipes, id: \.self.name) { recipe in
                Text("\(recipe.name)")
            }
        }
    }
}

#Preview {
    RecipesView(recipes: Recipe.example)
}



