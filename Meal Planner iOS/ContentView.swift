//
//  ContentView.swift
//  Meal Planner iOS
//
//  Created by Esther Annorzie on 8/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("pexels-dana-tentis-262959_")
                .resizable()
                .scaledToFit()
            Text("Never struggle planning your meals ever again!")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            Button("Get Started") {
                NavigationLink()
            }
            .padding()
            .foregroundColor(.white)
            .frame(width: 200, height: 50)
            .background(Color.red)
            .cornerRadius(25)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
