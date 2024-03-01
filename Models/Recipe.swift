//
//  Recipe.swift
//  YummiApp
//
//  Created by Veturi, Shreyas (HJRM) on 01/03/2024.
//

import Foundation

struct Recipe: Identifiable {

    let id = UUID()
    let name: String
    var ingredients: [Ingredient]
    var isFavourite: Bool
    var rating: Int
    
    #if DEBUG

    static var example = [Recipe(name: "Pasta", ingredients: [Ingredient](), isFavourite: true, rating: 5),
                   Recipe(name: "Protein Powder", ingredients: [Ingredient](), isFavourite: false, rating: 3),
                   Recipe(name: "Sandwich", ingredients: [Ingredient](), isFavourite: true, rating: 4)]

    #endif
    
}
