//
//  Ingredient.swift
//  FetchiOSTakeHome
//
//  Created by Timmy Nguyen on 9/12/23.
//

import Foundation

struct Ingredient: Identifiable {
    var id = UUID()
    var name: String
    var measurement: String
}

extension Ingredient: Equatable {
    static func ==(lhs: Ingredient, rhs: Ingredient) -> Bool {
        return lhs.name == rhs.name && lhs.measurement == rhs.measurement
    }
}

extension Ingredient {
    static let sampleIngredient = Ingredient(name: "Double Cream", measurement: "568ml")
}
