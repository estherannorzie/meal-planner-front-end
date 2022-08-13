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
        Text("Hello, \(user.username)!")
    }
}

struct UserHomeView_Previews: PreviewProvider {
    static var previews: some View {
        UserHomeView(user: .constant(previewUsers[0]))
    }
}
