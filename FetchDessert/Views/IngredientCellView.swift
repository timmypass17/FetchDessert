//
//  IngredientCellView.swift
//  FetchiOSTakeHome
//
//  Created by Timmy Nguyen on 9/12/23.
//

import SwiftUI

struct IngredientCellView: View {
    var ingredient: Ingredient
    
    var body: some View {
        HStack {
            Text(ingredient.name)
            Spacer()
            Text(ingredient.measurement)
                .foregroundColor(.secondary)
        }
    }
}

struct IngredientCellView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientCellView(ingredient: Ingredient.sampleIngredient)
    }
}
