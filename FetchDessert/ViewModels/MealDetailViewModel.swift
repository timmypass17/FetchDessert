//
//  MealDetailViewModel.swift
//  FetchiOSTakeHome
//
//  Created by Timmy Nguyen on 9/12/23.
//

import Foundation

@MainActor
class MealDetailViewModel: ObservableObject {
    @Published var mealDetail: MealDetail?
    @Published var isLoading = true
    @Published var isInstructionsExpanded = false
    @Published var showAlert = false
    
    init(meal: Meal) {
        Task {
            if let mealDetail = await fetchMealsBy(id: meal.id) {
                self.mealDetail = mealDetail
            } else {
                showAlert = true
            }
            isLoading = false
        }
    }
    
    func fetchMealsBy(id: String) async -> MealDetail? {
        do {
            let mealRequest = MealDetailAPIRequest(mealId: id)
            let mealDetail = try await sendRequest(mealRequest)
            return mealDetail
        } catch {
            print("Error fetching meal detail by id: \(id)\n\(error)")
            return nil
        }
    }
}
