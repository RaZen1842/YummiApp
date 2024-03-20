//
//  IngredientsViewModel.swift
//  YummiApp
//
//  Created by Veturi, Shreyas (HJRM) on 20/03/2024.
//

import Foundation

class IngredientsViewModel: Observable {
    
    // only ever one shared view model object allowed
    static let shared = IngredientsViewModel()

    var newIngredientName: String
    // TODO...

    // ensures object can only be initialised internally
    private init() {}

}
