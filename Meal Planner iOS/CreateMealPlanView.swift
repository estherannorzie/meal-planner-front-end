//
//  CreateMealPlanView.swift
//  Meal Planner iOS
//
//  Created by Esther Annorzie on 8/13/22.
//

import SwiftUI

struct CreateMealPlanView: View {
    @Binding var user: User
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CreateMealPlanView_Previews: PreviewProvider {
    static var previews: some View {
        CreateMealPlanView(user: .constant(previewUsers[0]))
    }
}
