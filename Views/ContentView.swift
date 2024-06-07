//
//  ContentView.swift
//  YummiApp
//
//  Created by Veturi, Shreyas (HJRM) on 05/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            TabView {
                RecipesView(recipes: Recipe.example)
                    .tabItem {
                        Label("Recipes",systemImage: "list.dash")
                    }
                
                IngredientsView()
                    .tabItem {
                        Label("Ingredients", systemImage: "pencil.and.list.clipboard")
                    }
                
                SearchMealView()
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
