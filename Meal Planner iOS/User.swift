//
//  User.swift
//  Meal Planner iOS
//
//  Created by Esther Annorzie on 8/8/22.
//

import Foundation

struct User: Identifiable, Codable {
    var id: Int
    var username: String
    var firstName: String
    var lastName: String
    var password: String
    var email: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case username
        case firstName = "first_name"
        case lastName = "last_name"
        case password
        case email
    }
}
