//
//  DishFetcher.swift
//  FetchChallenge
//
//  Created by Mingxin Xie on 8/16/24.
//

import Foundation

/*
    async function to do data fetching by decoding a json file
    through GET api call. Return to the fetching results.
 **/

struct MealsFetcher {
    // Fetches and returns a list of `Place`s with their `imageURL` property set.
    static func fetchDish(mealType: String) async throws -> [Meal] {
        // Result array to store fetched data
        var meals = [Meal]()
        // Url to the remote JSON file containing the data
        let urlMeals = URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=\(mealType)")
        
        // Create a shared URLSession
        let session = URLSession.shared
        
        // Start the data fetching
        do {
            let (data, _) = try await session.data(from: urlMeals!)
            let fullMeals = try JSONDecoder().decode(MealsResult.self, from: data)
            
            meals = fullMeals.meals
            
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        
        return meals
    }
    
    static func lookUpDish(mealID: String) async throws -> [Dessert] {
        // Result array to store fetched data
        var dessert = [Dessert]()
        
        // Url to the remote JSON file containing the data
        let urlLookUP = URL(string: "https://themealdb.com/api/json/v1/1/lookup.php?i=\(mealID)")
        
        // Create a shared URLSession
        let session = URLSession.shared
        
        // Start the data fetching
        do {
            let (data, _) = try await session.data(from: urlLookUP!)
            let result = try JSONDecoder().decode(DessertResult.self, from: data)
            
            dessert = result.meals
            
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        
        return dessert
    }
    
}
