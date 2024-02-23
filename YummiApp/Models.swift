//
//  Ingredients.swift
//  YummiApp
//
//  Created by Veturi, Shreyas (HJRM) on 24/01/2024.
//

import Foundation

struct Ingredient {
    let name: String
    var quantity: String
    var unit: Unit
    let category: String
    var expiryDate: Date
    
    
    func display() -> String {
        return """
Name: \(name)
Quantity: \(quantity)
Unit: \(unit.rawValue)
Category: \(category)
Expiry Date: \(expiryDate.formatted(.dateTime.day().month(.wide).year()))
"""
    }
    
}

enum Unit: String, CaseIterable {
    case lbs, oz, kg, g, L, mL, items
    var id: Self { self }
}
