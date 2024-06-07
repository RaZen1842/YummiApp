//
//  IngredientsView.swift
//  YummiApp
//
//  Created by Veturi, Shreyas (HJRM) on 01/03/2024.
//

import SwiftUI

struct IngredientsView: View {
    
    @State private var selectedIngredient: Int = 0
    
    @State var newIngredientName: String = ""
    @State var newIngredientQuantity: String = ""
    @State var newIngredientUnit: Unit = .items
    @State var newIngredientCategory: String = ""
    @State var newIngredientExpiryDate: Date = Date()
    
    @State var ingredients: [Ingredient] = [Ingredient]()
    
    var buttonDisabled: Bool {
        if newIngredientName.count == 0 || newIngredientQuantity.count == 0 || newIngredientCategory.count == 0 {
            return true
        }
        return false
    }
    
    
    var body: some View {
        VStack {
            Text("Ingredients")
                .bold()
            Form {
                if ingredients.count > 0 {
                    Text("\(ingredients[selectedIngredient].display())")
                    
                    
                    Button("Next Ingredient", action: {
                        selectedIngredient += 1
                        if selectedIngredient == self.ingredients.count {
                            selectedIngredient = 0
                        }
                    })
                }
                
                
                
                Section {
                    Text("New Ingredient")
                        .bold()
                    TextField("Ingredient",text: $newIngredientName)
                    TextField("Quantity",text: $newIngredientQuantity)
                    
                    
                    Picker("Unit", selection: $newIngredientUnit) {
                        ForEach(Unit.allCases, id:\.self) {
                            unit in Text(unit.rawValue)
                        }
                    }
                    
                    
                    TextField("Category",text: $newIngredientCategory)
                    
                    DatePicker("Expiry Date", selection: $newIngredientExpiryDate, in: Date()..., displayedComponents: [.date])
                    
                }
                
                Section {
                    Button("Enter", action: {
                        ingredients.append(Ingredient(name: newIngredientName, quantity: newIngredientQuantity, unit: newIngredientUnit, category: newIngredientCategory, expiryDate: newIngredientExpiryDate))
                        newIngredientName = ""
                        newIngredientQuantity = ""
                        newIngredientCategory = ""
                    })
                    .disabled(buttonDisabled)
                }
                
            }
        }
    }
}





#Preview {
    IngredientsView()
}
