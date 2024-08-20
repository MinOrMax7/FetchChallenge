//
//  DishModel.swift
//  FetchChallenge
//
//  Created by Mingxin Xie on 8/16/24.
//

import Foundation

/// Codable for Json decoder
/// Identifiable to list view

/// Data Model representing a meal
struct Meal: Codable, Identifiable {
    var id: UUID?
    
    var strMeal: String
    var strMealThumb: URL?
    var idMeal: String
//
//    enum CoddingKeys: String, CodingKey {
//        case name = "strMeal"
//        case imageURL = "strMealThumb"
//        case id = "idMeal"
//    }
}
extension Meal {
    static var exampleMeal: Meal = Meal(strMeal: "Sample Dish", idMeal: "00000")
}


/// Response from Dish API
struct MealsResult: Codable {
    var meals: [Meal]
}

