//
//  RecipeListView.swift
//  FoodRecipes32
//
//  Created by cmStudent on 2022/09/06.
//

import SwiftUI

struct RecipeListView: View {
    @State private var searchText = ""
    @State private var allRecipes = [Recipe]()
    
    var recipes: [Recipe] {
        if searchText.isEmpty {
            return allRecipes
        }
        return allRecipes.filter({
            $0.name.lowercased().contains(searchText.lowercased())})
    }
    
    var body: some View {
        NavigationView {
            VStack {
                SearchView(searchText: $searchText)
                ScrollView(showsIndicators: false) {
                    LazyVStack(alignment: .leading, spacing: 10) {
                        BannerView()
                        NavigationLink(destination:
                        RecipeDetailView(recipe: Recipe.sampleData[0]))
                        {
                            RecipeTileView(recipe: Recipe.sampleData[0])
                        } .buttonStyle(.plain)
                        
                        
                        ForEach(recipes, id: \.self) { recipe in
                            NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
                                RecipeTileView(recipe: recipe)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
                .animation(.easeInOut, value: searchText)
                .padding(.horizontal)
                .navigationTitle("DevTechine Recipes")
            }
            .onAppear {
                allRecipes = JSONFileManager.load("recipes.json")
                print(allRecipes)
            }
        }
    }
}
struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
