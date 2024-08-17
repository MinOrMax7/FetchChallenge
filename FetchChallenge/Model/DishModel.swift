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
    var id: String
    var name: String
    var imageURL: URL?
    
    enum CoddingKeys: String, CodingKey {
        case id = "idMeal"
        case name = "strMeal"
        case imageURL = "strMealThumb"
    }
}
extension Meal {
    static var exampleMeal: Meal = Meal(id: "00000", name: "Sample Dish")
}

/// Data Model representing a dessert
struct Dessert: Codable, Identifiable {
    var id: String
    var name: String
    var imageURL: URL?
    var instructions: String
    var reciepts: [String: String]
    
    var ingredients: [String]
    var measurements: [String]
}


/// Response from Dish API
struct MealsResult: Codable {
    var meals: [Meal]
}

