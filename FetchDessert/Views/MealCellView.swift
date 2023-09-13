//
//  MealCellView.swift
//  FetchiOSTakeHome
//
//  Created by Timmy Nguyen on 9/12/23.
//

import SwiftUI

struct MealCellView: View {
    var meal: Meal
    
    var body: some View {
        HStack(spacing: 12) {
            AsyncImage(url: URL(string: meal.imageUrl)) { image in
                image
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            } placeholder: {
                ProgressView()
            }
            .frame(width: 60, height: 60)
            
            Text(meal.name)
                .lineLimit(1)
        }
    }
}

struct MealCell_Previews: PreviewProvider {
    static var previews: some View {
        MealCellView(meal: Meal.sampleMeals[0])
            .previewLayout(.sizeThatFits)
    }
}
