//
//  MealDetail.swift
//  FetchiOSTakeHome
//
//  Created by Timmy Nguyen on 9/12/23.
//

import Foundation

struct MealDetail: Codable, Identifiable {
    var id: String
    var name: String
    var instructions: String
    var ingredients: [Ingredient] = []

    // Static JSON keys
    private enum CodingKeys: String, CodingKey {
        case id = "idMeal"
        case name = "strMeal"
        case instructions = "strInstructions"
    }
    
    private struct IngredientCodingKey: CodingKey {
        var stringValue: String

        init?(stringValue: String) {
            self.stringValue = stringValue
        }

        var intValue: Int?

        init?(intValue: Int) {
            return nil
        }

    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try values.decode(String.self, forKey: .id)
        self.name = try values.decode(String.self, forKey: .name)
        self.instructions = try values.decode(String.self, forKey: .instructions)
        
        // Loop through ingredients and measurements
        let ingredientValues = try decoder.container(keyedBy: IngredientCodingKey.self)
        for i in 1...20 {
            let ingredientKey = "strIngredient\(i)"
            let measurementKey = "strMeasure\(i)"

            if let ingredientName = try? ingredientValues.decode(String.self, forKey: .init(stringValue: ingredientKey)!),
               let measurement = try? ingredientValues.decode(String.self, forKey: .init(stringValue: measurementKey)!) {
                // Append ingredient if values not empty
                if ingredientName != "" && measurement != "" {
                    let ingredientItem = Ingredient(name: ingredientName, measurement: measurement)
                    self.ingredients.append(ingredientItem)
                }
            }
        }
    }
}
