//
//  ResponseModels.swift
//  FetchiOSTakeHome
//
//  Created by Timmy Nguyen on 9/12/23.
//

import Foundation

struct MealResponse: Codable {
    var meals: [Meal]
}

struct MealDetailResponse: Codable {
    var meals: [MealDetail]
}
