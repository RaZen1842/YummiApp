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
    
    @State var newIngredientName: String = ""
    @State var newIngredientQuantity: String = ""
    @State var newIngredientUnit: String = ""
    @State var newIngredientCategory: String = ""
    @State var newIngredientExpiryDate: String = ""
    
    
    var body: some View {
        Form {
            VStack(alignment: .leading, spacing: 20) {
                Text("\(ingredients.ingredientsArray[selectedIngredient].display())")
                Button("Next Ingredient", action: {
                    selectedIngredient += 1
                    if selectedIngredient == self.ingredients.ingredientsArray.count {
                        selectedIngredient = 0
                    }
                })
                
            }
                
            

            Section {
                VStack(alignment: .leading, spacing: 20) {
                    Text("New Ingredient")
                    TextField("Ingredient",text: $newIngredientName)
                    TextField("Quantity",text: $newIngredientQuantity)
                    TextField("Unit",text: $newIngredientUnit)
                    TextField("Category",text: $newIngredientCategory)
                    TextField("Expiry Date",text: $newIngredientExpiryDate)
                    
                    Button("Enter", action: {
                        ingredients.ingredientsArray.append(Ingredient(name: newIngredientName, quantity: newIngredientQuantity, unit: newIngredientUnit, category: newIngredientCategory, expiryDate: newIngredientExpiryDate))
                        
                    })
                }
            }
        }
    }
}



#Preview {
    ContentView()
}
