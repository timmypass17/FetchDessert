//
//  MealCategoryAPIRequest.swift
//  FetchiOSTakeHome
//
//  Created by Timmy Nguyen on 9/12/23.
//

import Foundation

struct MealCategoryAPIRequest: APIRequest {
    var category: Category
    
    var urlRequest: URLRequest {
        var urlComponents = URLComponents(string: "https://themealdb.com/api/json/v1/1/filter.php")!
        urlComponents.queryItems = [
            "c": category.description,
        ].map { URLQueryItem(name: $0.key, value: $0.value) }

        return URLRequest(url: urlComponents.url!)
    }

    func decodeResponse(data: Data) throws -> [Meal] {
        let mealReponse = try JSONDecoder().decode(MealResponse.self, from: data)
        return mealReponse.meals
    }
}

