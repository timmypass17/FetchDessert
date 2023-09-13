//
//  MealDetailAPIRequest.swift
//  FetchiOSTakeHome
//
//  Created by Timmy Nguyen on 9/12/23.
//

import Foundation

struct MealDetailAPIRequest: APIRequest {
    var mealId: String
    
    var urlRequest: URLRequest {
        var urlComponents = URLComponents(string: "https://themealdb.com/api/json/v1/1/lookup.php")!
        urlComponents.queryItems = [
            "i": mealId,
        ].map { URLQueryItem(name: $0.key, value: $0.value) }

        return URLRequest(url: urlComponents.url!)
    }

    func decodeResponse(data: Data) throws -> MealDetail {
        let mealDetailReponse = try JSONDecoder().decode(MealDetailResponse.self, from: data)
        return mealDetailReponse.meals.first!
    }
}

