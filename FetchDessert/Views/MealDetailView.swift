//
//  MealDetailView.swift
//  FetchiOSTakeHome
//
//  Created by Timmy Nguyen on 9/12/23.
//

import SwiftUI

struct MealDetailView: View {
    @StateObject var mealDetailViewModel: MealDetailViewModel
    
    init(meal: Meal) {
        self._mealDetailViewModel = StateObject(wrappedValue: MealDetailViewModel(meal: meal))
    }
    
    var body: some View {
        NavigationView {
            if mealDetailViewModel.isLoading {
                ProgressView()
            } else {
                Form {
                    Section(header: Text("Instructions")) {
                        Text(mealDetailViewModel.mealDetail?.instructions ?? "No Instructions Found.")
                            .lineLimit(mealDetailViewModel.isInstructionsExpanded ? nil : 10)
                            .onTapGesture {
                                mealDetailViewModel.isInstructionsExpanded.toggle()
                            }
                    }
                    
                    Section(header: Text("Ingredients")) {
                        List(mealDetailViewModel.mealDetail?.ingredients ?? []) { ingredient in
                            IngredientCellView(ingredient: ingredient)
                        }
                    }
                }
                .alert("Error fetching meal info.",
                       isPresented: $mealDetailViewModel.showAlert) {
                } message: {
                    Text("Please check your Wi-Fi or mobile data and try again.")
                }
            }
        }
    }
}

struct MealDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MealDetailView(meal: Meal.sampleMeals.first!)
    }
}
