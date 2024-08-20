//
//  MealListItemView.swift
//  FetchChallenge
//
//  Created by Mingxin Xie on 8/16/24.
//

import SwiftUI

struct MealListItemView: View {
    var meal: Meal
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(meal.strMeal)
                    .bold()
            }
            Spacer()
            if let imageURL = meal.strMealThumb {
                AsyncImage(url: imageURL) { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                } placeholder: {
                    Color.gray
                }
                .frame(maxWidth: 100, maxHeight: 100)
            }
        }
    }
}

#Preview {
    MealListItemView(meal: Meal.exampleMeal)
}
