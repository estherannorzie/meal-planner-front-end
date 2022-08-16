//
//  LoginScreenView.swift
//  Meal Planner iOS
//
//  Created by Esther Annorzie on 8/8/22.
//

import SwiftUI

struct LoginScreenView: View {
    @StateObject public var apiManager = MealPlannerAPIManager()
    @State private var email = ""
    @State private var password = ""
    @State var isActive: Bool = false
    @State private var isLoggedIn = false
    @State public var user: User? = nil
    
    var body: some View {
        if !isLoggedIn {
            ZStack {
                Color.red
                    .ignoresSafeArea()
                RoundedRectangle(cornerRadius: 25)
                    .scale(0.8)
                    .foregroundColor(.white)
                
                VStack {
                    Text("Welcome!")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("Email", text: $email)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    Button("Login") {
                        Task {
                            do {
                                let users = try await apiManager.getUsers()
                                let filteredUsers = users.filter { $0.email == email && $0.password == password }
                                if !filteredUsers.isEmpty {
                                    user = filteredUsers[0]
                                }
                                isLoggedIn = true
                                
                            } catch {
                                print("There was an \(error)")
                            }
                        }
                    }
                    .padding()
                    .foregroundColor(.white)
                    .frame(width: 200, height: 50)
                    .background(Color.red)
                    .cornerRadius(25)
                    
                    NavigationLink(destination: SignUpView(), isActive: self.$isActive) {
                        Text("New? Sign Up")
                            .bold()
                            .padding()
                        }
                }
                .navigationBarTitle("Meal Planner iOS", displayMode: .inline)
            }
            .environmentObject(apiManager)
        } else {
            if let binding = Binding<User>($user) {
                UserView(user: binding)
                .environmentObject(apiManager)
            }
        }
    }
}

struct LoginScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenView()
    }
}
