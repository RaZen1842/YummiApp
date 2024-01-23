//
//  ContentView.swift
//  YummiApp
//
//  Created by Veturi, Shreyas (HJRM) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, Shreyas!")
        }
        .padding()
    }
}

struct Ingredient {
    private var name: String
    private var quantity: Int
    private var unit: String
    private var category: String
    private var expiryDate: Int
    
    
    
}




#Preview {
    ContentView()
}
