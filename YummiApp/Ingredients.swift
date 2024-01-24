//
//  Ingredients.swift
//  YummiApp
//
//  Created by Veturi, Shreyas (HJRM) on 24/01/2024.
//

import Foundation

struct Ingredients {
    let name: String
    var quantity: Int
    var unit: String
    let category: String
    var expiryDate: String
    
    
    func display() -> String {
        return """
Name: \(name)
Quantity: \(quantity)
Unit: \(unit)
Category: \(category)
Expiry Date: \(expiryDate)
"""
    }
    
}
