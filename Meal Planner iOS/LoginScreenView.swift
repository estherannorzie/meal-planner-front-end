//
//  LoginScreenView.swift
//  Meal Planner iOS
//
//  Created by Esther Annorzie on 8/8/22.
//

import SwiftUI

struct LoginScreenView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var showLoginScreen = false
    var body: some View {
        NavigationView {
            ZStack {
                Color.red
                    .ignoresSafeArea()
                
                RoundedRectangle(cornerRadius: 25)
                    .scale(0.8)
                    .foregroundColor(.white)
                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("Email", text: $email)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    Button("Login") {
                        
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.red)
                    .cornerRadius(25)
                    
                    NavigationLink(destination: Text("Welcome @\(username)"), isActive: $showLoginScreen) {
                        EmptyView()
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
    
    func authenticateUser(username: String) {
        
    }
}

struct LoginScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenView()
    }
}
