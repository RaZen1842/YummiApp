//
//  SwiftUIView.swift
//  YummiApp
//
//  Created by Veturi, Shreyas (HJRM) on 07/06/2024.
//

import SwiftUI

struct SearchMealView: View {
    
    @State private var search: String = ""
    @State private var results: ApiResult?
    
    @ObservedObject var apiManager = ApiManager.shared
    
    var body: some View {
        VStack {
            Text("Search Meal")
                .bold()
            
            Form {
                TextField("Enter Search Item", text: $search)
                    .onChange(of: search) { oldValue, newValue in
                        print("New value is: \(newValue)")
                        apiManager.searchMeal(query: newValue) { results in
                            self.results = results
                        }
                    }
            }
            //TODO HERE
            
            List {
                ForEach(results, id:\.id) { result in
                    NavigationLink("\(result.strMeal)") {
                        MealDetailView(mealId: result.idMeal)
                    }
                }
            }
            .navigationTitle("Meal Search API")
            
            
            
        }
    }
    
    
}

#Preview {
    SearchMealView()
}
