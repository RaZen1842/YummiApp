//
//  RecipiesView.swift
//  YummiApp
//
//  Created by Veturi, Shreyas (HJRM) on 27/02/2024.
//

import Foundation
import SwiftUI

struct RecipesView: View {
    
    @State var recpies: [Recipe]
    var body: some View {
        
        VStack{
            NavigationStack{
                List {
                    ForEach(recpies, id:\.self) {name in
                        NavigationLink
                    }
                }
            }
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView(recipes: Recipe.example)
    }
}
