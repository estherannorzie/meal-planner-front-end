//
//  SettingsView.swift
//  Meal Planner iOS
//
//  Created by Esther Annorzie on 8/13/22.
//

import SwiftUI

struct SettingsView: View {
    @Binding var user: User
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(user: .constant(previewUsers[0]))
    }
}
