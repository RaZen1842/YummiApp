//
//  ContentView.swift
//  YummiApp
//
//  Created by Veturi, Shreyas (HJRM) on 05/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var buttonOn = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $buttonOn) {
                Text("Show Recipes")
            }
            .padding()
            if buttonOn == false {
                IngredientsView()
            }
            else {
                RecipesView(recipes: Recipe.example)
            }
        }
    }
}

#Preview {
    ContentView()
}
