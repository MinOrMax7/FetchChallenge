//
//  MealListView.swift
//  FetchChallenge
//
//  Created by Mingxin Xie on 8/16/24.
//

import SwiftUI

struct MealListView: View {
    @State private var meals: [Meal] = []
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(meals, id: \.idMeal) { meal in
                    NavigationLink(destination: MealDetailsView(meal: meal)) {
                        VStack {
                            MealListItemView(meal: meal)
                            Divider()
                                    .padding(.horizontal, 30)
                        }
                    }
                    .accentColor(Color.black)
                }
            }
            .padding(.horizontal, 15)
        }
        .navigationTitle("FetchRecipe")

        .task {
            do {
                meals = try await MealsFetcher.fetchDish(mealType: "Dessert")
            } catch {
                meals = []
            }
        }
    }
}

#Preview {
    MealListView()
}
