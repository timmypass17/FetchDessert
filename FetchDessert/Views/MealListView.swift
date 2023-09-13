//
//  MealListView.swift
//  FetchiOSTakeHome
//
//  Created by Timmy Nguyen on 9/12/23.
//

import SwiftUI

struct MealListView: View {
    @StateObject var mealListViewModel: MealListViewModel

    init(category: Category) {
        self._mealListViewModel = StateObject(wrappedValue: MealListViewModel(category: category))
    }
    
    var body: some View {
        NavigationView {
            List(mealListViewModel.meals) { meal in
                NavigationLink {
                    MealDetailView(meal: meal)
                        .navigationTitle(meal.name)
                } label: {
                    MealCellView(meal: meal)
                }
            }
            .navigationTitle("My \(mealListViewModel.category.pluralDescription)")
            .overlay {
                if mealListViewModel.isLoading {
                    ProgressView()
                }
            }
        }
    }
}

struct MealListView_Previews: PreviewProvider {
    static var previews: some View {
        MealListView(category: .dessert)
    }
}
