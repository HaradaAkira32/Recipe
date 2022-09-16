//
//  ContentView.swift
//  FoodRecipes32
//
//  Created by cmStudent on 2022/08/30.
//

import SwiftUI

struct ContentView: View {
    @State private var showOnboarding = true
    var body: some View {
        if showOnboarding {
            AppOnboardingView(showOnbording: $showOnboarding)
        } else {
            RecipeListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
