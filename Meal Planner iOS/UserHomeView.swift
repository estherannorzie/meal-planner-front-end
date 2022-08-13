//
//  UserHomeView.swift
//  Meal Planner iOS
//
//  Created by Esther Annorzie on 8/11/22.
//
import SwiftUI

struct UserHomeView: View {
    @Binding var user: User
    var body: some View {
        NavigationView {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                CreateMealPlanView()
                    .tabItem {
                        Image(systemName: "plus.circle")
                        Text("New Meal Plan")
                    }
                ViewMealPlansView()
                    .tabItem {
                        Image(systemName: "eyes.inverse")
                        Text("My Meal Plans")
                    }
                SettingsView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("User Settings")
                    }
            }
            .accentColor(.red)
        }
        .navigationBarTitle("Hello, \(user.username)!", displayMode: .inline)
    }
}

struct UserHomeView_Previews: PreviewProvider {
    static var previews: some View {
        UserHomeView(user: .constant(previewUsers[0]))
    }
}
