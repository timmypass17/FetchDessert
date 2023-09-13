//
//  FetchDessertTests.swift
//  FetchDessertTests
//
//  Created by Timmy Nguyen on 9/12/23.
//

import XCTest
@testable import FetchDessert

final class FetchDessertTests: XCTestCase {

    func testDecodingMealCategoryResponse() throws {
        let mealDetailReponse = try JSONDecoder().decode(MealResponse.self, from: mealsData)
        let meals = mealDetailReponse.meals
        XCTAssertEqual(meals.count, 5)
        XCTAssertEqual(meals.first!.id, "53049")
        XCTAssertEqual(meals.first!.name, "Apam balik")
    }
    
    func testDecodingMealDetailResponse() throws {
        let mealDetailReponse = try JSONDecoder().decode(MealDetailResponse.self, from: whiteChocolateData)
        let meal = mealDetailReponse.meals.first!
        XCTAssertEqual(meal.id, "52917")
        XCTAssertEqual(meal.name, "White chocolate creme brulee")
    }
    
    
    func testFetchingMealByCategory() async throws {
        let mealRequest = MealCategoryAPIRequest(category: .dessert)
        let meals = try await sendRequest(mealRequest)
        let meal = meals.first!
        XCTAssertEqual(meals.count, 64)
        XCTAssertEqual(meal.id, "53049")
        XCTAssertEqual(meal.name, "Apam balik")
        
    }
    
    func testFetchingMealByID() async throws {
        let mealRequest = MealDetailAPIRequest(mealId: "52855")
        let meal = try await sendRequest(mealRequest)
        XCTAssertEqual(meal.id, "52855")
        XCTAssertEqual(meal.name, "Banana Pancakes")
        
        let ingredients: [Ingredient] = [
            Ingredient(name: "Banana", measurement: "1 large"),
            Ingredient(name: "Eggs", measurement: "2 medium"),
            Ingredient(name: "Baking Powder", measurement: "pinch"),
            Ingredient(name: "Vanilla Extract", measurement: "spinkling"),
            Ingredient(name: "Oil", measurement: "1 tsp "),
            Ingredient(name: "Pecan Nuts", measurement: "25g"),
            Ingredient(name: "Raspberries", measurement: "125g")
        ]
        
        XCTAssertEqual(meal.ingredients, ingredients)
    }
}
