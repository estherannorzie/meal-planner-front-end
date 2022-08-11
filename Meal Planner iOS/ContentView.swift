//
//  ContentView.swift
//  Meal Planner iOS
//
//  Created by Esther Annorzie on 8/7/22.
//

import SwiftUI

struct ContentView: View {
    var API = MealPlannerAPIManager()
    @State var users: [User] = []
    @State var isActive: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Image("pexels-dana-tentis-262959_")
                    .resizable()
                    .scaledToFit()
                Text("Never struggle planning your meals ever again!")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                
                NavigationLink(destination: Text("Let's get started!"), isActive: self.$isActive) {
                        Text("")
                    }

                    Button("Get Started"){
                        self.isActive = true
                    }
                    .padding()
                    .foregroundColor(.white)
                    .frame(width: 200, height: 50)
                    .background(Color.red)
                    .cornerRadius(25)
                }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
