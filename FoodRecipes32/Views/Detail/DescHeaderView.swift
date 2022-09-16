//
//  DescHeaderView.swift
//  FoodRecipes32
//
//  Created by cmStudent on 2022/09/09.
//

import SwiftUI

struct DescHeaderView: View {
    
    @Binding var stepsShowing: Bool
    
    
    var recipe: Recipe
    
    var body: some View {
        
        VStack {
            VStack{
                Text(recipe.name)
                    .font(.title2)
                
                Text("\(recipe.cookTime) | \(recipe.servings)")
                    .foregroundColor(.secondary)
                
                Picker("", selection: $stepsShowing) {
                    Text("Ingredinets")
                        .tag(false)
                    Text("Steps")
                        .tag(true)
                }.labelsHidden()
                    .pickerStyle(.segmented)
            }
        }
    }
}

struct DescHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DescHeaderView(stepsShowing: .constant(false), recipe: Recipe.sampleData[0])
    }
}
