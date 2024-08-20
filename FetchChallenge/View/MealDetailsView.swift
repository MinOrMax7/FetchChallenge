//
//  MealDetailsView.swift
//  FetchChallenge
//
//  Created by Mingxin Xie on 8/19/24.
//

import SwiftUI

struct MealDetailsView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var meal: Meal
    @State var dessert: Dessert?
    @State var checked: Bool = false
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Image("Arrow")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 40, maxHeight: 40)
                        .background(Color.white)
                }
                .clipShape(Circle())
                .padding(.leading, 10)
                
                Text(dessert?.strMeal ?? "empty")
                    .font(.system(size: 25))
                    .bold()
            }
            
            ScrollView {
                VStack(alignment: .leading) {
                    if let imageURL = dessert?.strMealThumb {
                        AsyncImage(url: imageURL) { image in
                            image.resizable()
                                .aspectRatio(contentMode: .fill)
                        } placeholder: {
                            Color.gray
                        }
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Recipes List")
                            .bold()
                            .font(.system(size: 20))
                            .padding(.leading, 15)
                        List {
                            Section(header: Text("Recipes")) {
                                if dessert?.strIngredient1 == "" || dessert?.strIngredient1 == " " || dessert?.strIngredient1 == nil {
                                    EmptyView()
                                } else {
                                    HStack {
                                        Text(dessert?.strIngredient1 ?? "empty")
                                        Text(dessert?.strMeasure1 ?? "empty")
                                    }
                                }
                                if dessert?.strIngredient2 == "" || dessert?.strIngredient2 == " " || dessert?.strIngredient2 == nil {
                                    EmptyView()
                                } else {
                                    HStack {
                                        Text(dessert?.strIngredient2 ?? "empty")
                                        Text(dessert?.strMeasure2 ?? "empty")
                                    }
                                }
                                if dessert?.strIngredient3 == "" || dessert?.strIngredient3 == " " || dessert?.strIngredient3 == nil {
                                    EmptyView()
                                } else {
                                    HStack{
                                        Text(dessert?.strIngredient3 ?? "empty")
                                        Text(dessert?.strMeasure1 ?? "empty")
                                    }
                                    
                                }
                                if dessert?.strIngredient4 == "" || dessert?.strIngredient4 == " " || dessert?.strIngredient4 == nil {
                                    EmptyView()
                                } else {
                                    HStack {
                                        Text(dessert?.strIngredient4 ?? "empty")
                                        Text(dessert?.strMeasure4 ?? "empty")
                                    }
                                }
                                if dessert?.strIngredient5 == "" || dessert?.strIngredient5 == " " || dessert?.strIngredient5 == nil {
                                    EmptyView()
                                } else {
                                    HStack{
                                        Text(dessert?.strIngredient5 ?? "empty")
                                        Text(dessert?.strMeasure5 ?? "empty")
                                    }
                                }
                                if dessert?.strIngredient6 == "" || dessert?.strIngredient6 == " " || dessert?.strIngredient6 == nil {
                                    EmptyView()
                                } else {
                                    HStack{
                                        Text(dessert?.strIngredient6 ?? "empty")
                                        Text(dessert?.strMeasure6 ?? "empty")
                                    }
                                }
                                if dessert?.strIngredient7 == "" || dessert?.strIngredient7 == " " || dessert?.strIngredient7 == nil {
                                    EmptyView()
                                } else {
                                    HStack {
                                        Text(dessert?.strIngredient7 ?? "empty")
                                        Text(dessert?.strMeasure7 ?? "empty")
                                    }
                                }
                                if dessert?.strIngredient8 == "" || dessert?.strIngredient8 == " " || dessert?.strIngredient8 == nil {
                                    EmptyView()
                                } else {
                                    HStack{
                                        Text(dessert?.strIngredient8 ?? "empty")
                                        Text(dessert?.strMeasure8 ?? "empty")
                                    }
                                }
                                if dessert?.strIngredient9 == "" || dessert?.strIngredient9 == " " || dessert?.strIngredient9 == nil {
                                    EmptyView()
                                } else {
                                    HStack{
                                        Text(dessert?.strIngredient9 ?? "empty")
                                        Text(dessert?.strMeasure9 ?? "empty")
                                    }
                                }
                                if dessert?.strIngredient10 == "" || dessert?.strIngredient10 == " " || dessert?.strIngredient10 == nil {
                                    EmptyView()
                                } else {
                                    HStack {
                                        Text(dessert?.strIngredient10 ?? "empty")
                                        Text(dessert?.strMeasure10 ?? "empty")
                                    }
                                }
                                if dessert?.strIngredient11 == "" || dessert?.strIngredient11 == " " || dessert?.strIngredient11 == nil {
                                    EmptyView()
                                } else {
                                    HStack {
                                        Text(dessert?.strIngredient11 ?? "empty")
                                        Text(dessert?.strMeasure11 ?? "empty")
                                    }
                                }
                                if dessert?.strIngredient12 == "" || dessert?.strIngredient12 == " " || dessert?.strIngredient12 == nil {
                                    EmptyView()
                                }
                                else {
                                    HStack{
                                        Text(dessert?.strIngredient12 ?? "empty")
                                        Text(dessert?.strMeasure12 ?? "empty")
                                    }
                                }
                                if dessert?.strIngredient13 == "" || dessert?.strIngredient13 == " " || dessert?.strIngredient13 == nil {
                                    EmptyView()
                                } else {
                                    HStack {
                                        Text(dessert?.strIngredient13 ?? "empty")
                                        Text(dessert?.strMeasure13 ?? "empty")
                                    }
                                }
                                if dessert?.strIngredient14 == "" || dessert?.strIngredient14 == " " || dessert?.strIngredient14 == nil {
                                    EmptyView()
                                } else {
                                    HStack {
                                        Text(dessert?.strIngredient14 ?? "empty")
                                        Text(dessert?.strMeasure14 ?? "empty")
                                    }
                                }
                                if dessert?.strIngredient15 == "" || dessert?.strIngredient15 == " " || dessert?.strIngredient15 == nil {
                                    EmptyView()
                                } else {
                                    HStack{
                                        Text(dessert?.strIngredient15 ?? "empty")
                                        Text(dessert?.strMeasure15 ?? "empty")
                                    }
                                }
                                if dessert?.strIngredient16 == "" || dessert?.strIngredient16 == " " || dessert?.strIngredient16 == nil {
                                    EmptyView()
                                } else {
                                    HStack {
                                        Text(dessert?.strIngredient16 ?? "empty")
                                        Text(dessert?.strMeasure16 ?? "empty")
                                    }
                                }
                                if dessert?.strIngredient17 == "" || dessert?.strIngredient17 == " " || dessert?.strIngredient17 == nil {
                                    EmptyView()
                                } else {
                                    HStack {
                                        Text(dessert?.strIngredient17 ?? "empty")
                                        Text(dessert?.strMeasure17 ?? "empty")
                                    }
                                }
                                if dessert?.strIngredient18 == "" || dessert?.strIngredient18 == " " || dessert?.strIngredient18 == nil {
                                    EmptyView()
                                } else {
                                    HStack{
                                        Text(dessert?.strIngredient18 ?? "empty")
                                        Text(dessert?.strMeasure18 ?? "empty")
                                    }
                                }
                                if dessert?.strIngredient19 == "" || dessert?.strIngredient19 == " " || dessert?.strIngredient19 == nil {
                                    EmptyView()
                                } else {
                                    HStack {
                                        Text(dessert?.strIngredient19 ?? "empty")
                                        Text(dessert?.strMeasure19 ?? "empty")
                                    }
                                }
                                if dessert?.strIngredient20 == "" || dessert?.strIngredient20 == " " || dessert?.strIngredient20 == nil {
                                    EmptyView()
                                } else {
                                    HStack {
                                        Text(dessert?.strIngredient20 ?? "empty")
                                        Text(dessert?.strMeasure20 ?? "empty")
                                    }
                                }
                            }
                        }
                        .frame(height:150)
                        .scrollIndicators(.hidden)
                        
                        Text("Instructions")
                            .bold()
                            .font(.system(size: 20))
                            .padding(.leading, 15)
                        Text(dessert?.strInstructions ?? "empty")
                            .padding(.horizontal, 15)
                    }
                }
                    
            }
        }
        .navigationBarHidden(true)
        .task {
            do {
                let dessertArray = try await MealsFetcher.lookUpDish(mealID: meal.idMeal)
                dessert = dessertArray[0]
            } catch {
                dessert = Dessert.exampleDessert
            }
        }
    }
}

#Preview {
    MealDetailsView(meal: Meal.exampleMeal)
}
