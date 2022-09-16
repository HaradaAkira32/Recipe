//
//  appOnboarding.swift
//  FoodRecipes32
//
//  Created by cmStudent on 2022/09/02.
//

import Foundation

struct AppOnbroding: Identifiable {
    let id = UUID().uuidString
    var title : String
    var detail : String
    var animationName : String
}

extension AppOnbroding {
    static var data: [AppOnbroding] {
        [
        AppOnbroding(title: "Welcome to Food Recipes", detail: "Search, cook and enjoy freshly made food at your home. Find step by step recipes with Food Recipes App", animationName: "onboarding1.json"),
        AppOnbroding(title: "Pick fresh ingredients!", detail: "Best tasting food comes from fresh ingredients. Find list of ingresients with Food Recipes App", animationName: "onboarding2.json"),
        AppOnbroding(title: "Cook to perfection!", detail: "Delicious food takes its own time to get ready. Find list tof steps to cook your food to the perfection.", animationName: "onborading3.json"),
        AppOnbroding(title: "Enjoy your homemade meal!", detail: "Enjoy your home cooked food with your friends and family", animationName: "onboarding4.json")
        ]
    }
}
