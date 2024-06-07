//
//  ApiResult.swift
//  YummiApp
//
//  Created by Veturi, Shreyas (HJRM) on 07/06/2024.
//

import Foundation

struct ApiResult: Codable {
    let meals: [Meal]
}

struct Meal: Codable {
    let idMeal: String
    let strMeal: String
    let strCategory: String
    let strArea: String
}
