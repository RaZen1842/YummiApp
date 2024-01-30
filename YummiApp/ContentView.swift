//
//  ContentView.swift
//  YummiApp
//
//  Created by Veturi, Shreyas (HJRM) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var ingredients = Ingredients()
    @State private var selectedIngredient: Int = 0
    
    
    var body: some View {
        Form {
            VStack(alignment: .leading, spacing: 20) {
                Text("\(ingredients.ingredients[selectedIngredient].display())")
                Button("Next Ingredient", action: {
                    selectedIngredient += 1
                    if selectedIngredient == self.ingredients.ingredients.count {
                        selectedIngredient = 0
                    }
                })
            }
        }
    }
}



#Preview {
    ContentView()
}
