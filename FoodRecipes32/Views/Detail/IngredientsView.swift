//
//  IngredientsView.swift
//  FoodRecipes32
//
//  Created by cmStudent on 2022/09/09.
//

import SwiftUI

struct IngredientsView: View {
    var recipe: Recipe
    var body: some View {
        VStack {
            HStack(alignment: .lastTextBaseline) {
                Text("Ingredients")
                    .font(.callout)
                    .foregroundColor(.secondary)
            }
            ForEach(recipe.ingredients, id: \.self) {
                ingredient in
                HStack(alignment: .center) {
                    Text(ingredient.emoji)
                        .padding()
                        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                    Text(ingredient.name)
                    Spacer()
                    Text(ingredient.quantity)
                        .multilineTextAlignment(.trailing)
                }
                .padding(.vertical)
                
            }
        }
    }
}

struct IngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsView(recipe: Recipe.sampleData[1])
    }
}
