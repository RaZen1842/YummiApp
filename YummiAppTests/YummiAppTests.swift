//
//  YummiAppTests.swift
//  YummiAppTests
//
//  Created by Veturi, Shreyas (HJRM) on 23/01/2024.
//

import XCTest
@testable import YummiApp

final class YummiAppTests: XCTestCase {
    
    func appProperlyDisplaysIngredient() {
        let ingredient = Ingredient(name: "Tomato", quantity: "3", unit: Unit(rawValue: "lbs")!, category: "Fruit", expiryDate: "27/03/2024")
        
        XCTAssertEqual(ingredient.name, "Tomato")
        XCTAssertEqual(ingredient.quantity, "3")
        XCTAssertEqual(ingredient.unit, Unit(rawValue: "lbs"))
        XCTAssertEqual(ingredient.category, "Fruit")
        XCTAssertEqual(ingredient.expiryDate, "27/03/2024")
        
    }

}
