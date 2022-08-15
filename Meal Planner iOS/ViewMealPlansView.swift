//
//  ViewMealPlansView.swift
//  Meal Planner iOS
//
//  Created by Esther Annorzie on 8/13/22.
//

import SwiftUI

struct ViewMealPlansView: View {
    @Binding var user: User
    @EnvironmentObject var environmentObject: MealPlannerAPIManager
    var body: some View {
        Text("Hello, World!")
    }
}

struct ViewMealPlansView_Previews: PreviewProvider {
    static var previews: some View {
        ViewMealPlansView(user: .constant(previewUsers[0]))
    }
}
