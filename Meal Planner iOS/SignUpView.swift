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
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
