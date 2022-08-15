//
//  Network.swift
//  Meal Planner iOS
//
//  Created by Esther Annorzie on 8/8/22.
//

import Foundation

class MealPlannerAPIManager: ObservableObject {
    let baseURL = "https://meal-planner-ios-back-end.herokuapp.com/"
    
    func getUsers() async throws -> [User] {
        // Ensure the URL is valid
        guard let url = URL(string: "\(baseURL)users")
        else {
            fatalError("Missing or invalid URL.")
        }

        // Make the GET request
        let urlRequest = URLRequest(url: url)
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        // Check the response was successful
        guard (response as? HTTPURLResponse)?.statusCode == 200
        else {
            fatalError("Error while fetching data.")
        }
        
        // Transform the data from the network response
        // into an array of User objects
        let decodedData = try JSONDecoder().decode(
            [User].self,
            from: data
        )
        
        return decodedData
    }
    
//    func getUserMealPlans() async throws -> [MealPlan] {
//        guard let url = URL(string: "\(baseURL)\(user.id)")
//        else {
//            fatalError("Missing or invalid URL.")
//        }
//    }
}
