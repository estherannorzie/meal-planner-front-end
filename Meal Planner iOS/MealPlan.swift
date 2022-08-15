//
//  MealPlan.swift
//  Meal Planner iOS
//
//  Created by Esther Annorzie on 8/13/22.
//

import Foundation

struct MealPlan: Identifiable, Codable {
    var id: Int
    var title: String
    var type: String
    var calories: Int
    var diet: String
    var date: Date
}
