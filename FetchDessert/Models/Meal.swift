//
//  Meal.swift
//  FetchiOSTakeHome
//
//  Created by Timmy Nguyen on 9/12/23.
//

import Foundation

struct Meal: Codable, Identifiable {
    var id: String
    var name: String
    var imageUrl: String
    
    enum CodingKeys: String, CodingKey {
        case id = "idMeal"
        case name = "strMeal"
        case imageUrl = "strMealThumb"
    }
}

extension Meal: Comparable {
    static func < (lhs: Meal, rhs: Meal) -> Bool {
        return lhs.name < rhs.name
    }
}

extension Meal {
    static let sampleMeals: [Meal] = [
        Meal(id: "52917", name: "White chocolate creme brulee", imageUrl: "https://www.themealdb.com/images/media/meals/uryqru1511798039.jpg"),
        Meal(id: "52893", name: "Apple & Blackberry Crumble", imageUrl: "https://www.themealdb.com/images/media/meals/wxywrq1468235067.jpg"),
        Meal(id: "52897", name: "Carrot Cake", imageUrl: "https://www.themealdb.com/images/media/meals/vrspxv1511722107.jpg")
    ]
}
