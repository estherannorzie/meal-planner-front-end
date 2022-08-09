//
//  User.swift
//  Meal Planner iOS
//
//  Created by Esther Annorzie on 8/8/22.
//

import Foundation

struct User: Identifiable, Decodable {
    var id: Int
    var name: String
    var username: String
    var email: String
}
