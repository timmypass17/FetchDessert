//
//  FetchDessertApp.swift
//  FetchDessert
//
//  Created by Timmy Nguyen on 9/12/23.
//

import SwiftUI

@main
struct FetchDessertApp: App {
    var body: some Scene {
        WindowGroup {
            MealListView(category: .dessert)
        }
    }
}
