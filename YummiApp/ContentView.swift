//
//  ContentView.swift
//  YummiApp
//
//  Created by Veturi, Shreyas (HJRM) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    let ingredients = Ingredients(name: "Tomato", quantity: 3, unit: "lbs", category: "Fruit", expiryDate: "27/03/2024")
    
    
    var body: some View {
        VStack {
            Text(ingredients.display())
                .padding()
        }
    }
}




#Preview {
    ContentView()
}
