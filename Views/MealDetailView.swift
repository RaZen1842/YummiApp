//
//  MealDetailView.swift
//  YummiApp
//
//  Created by Veturi, Shreyas (HJRM) on 07/06/2024.
//

import SwiftUI

struct MealDetailView: View {
    
    @State var mealId: String
    
    var body: some View {
        VStack {
            Text("\(mealId)")
        }
        .onAppear {
            
        }
    }
}

#Preview {
    MealDetailView(mealId: "52771")
}
