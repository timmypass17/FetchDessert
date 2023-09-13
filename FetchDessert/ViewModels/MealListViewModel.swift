//
//  DessertListViewModel.swift
//  FetchiOSTakeHome
//
//  Created by Timmy Nguyen on 9/12/23.
//

import Foundation

@MainActor
class MealListViewModel: ObservableObject {
    @Published var meals: [Meal] = []
    @Published var isLoading = true
    @Published var showAlert = false

    var category: Category

    init(category: Category) {
        self.category = category
        Task {
            if let meals = await fetchMealsBy(category: .dessert) {
                self.meals = meals
            } else {
                showAlert = true
            }
            isLoading = false
        }
    }

    func fetchMealsBy(category: Category) async -> [Meal]? {
        do {
            let mealRequest = MealCategoryAPIRequest(category: category)
            let meals = try await sendRequest(mealRequest)
            return meals.sorted()
        } catch {
            print("Error fetching meals by category: \(category.description)\n\(error)")
            return nil
        }
    }
}
