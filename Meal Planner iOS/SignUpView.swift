//
//  SignUpView.swift
//  Meal Planner iOS
//
//  Created by Esther Annorzie on 8/11/22.
//

import SwiftUI

struct SignUpView: View {
    var apiManager = MealPlannerAPIManager()
    @State var users: [User] = []
    
    var body: some View {
        Text("Hello, username!")
            .task{
                do {
                    users = try await apiManager.getUsers()
                    print(users)
                } catch {
                    print("There was an \(error)")
                }
            }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
