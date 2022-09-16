//
//  AppOnboardingView.swift
//  FoodRecipes32
//
//  Created by cmStudent on 2022/09/02.
//

import SwiftUI

struct AppOnboardingView: View {
    
    @Binding var showOnbording: Bool
    
    var steps = AppOnbroding.data
    
    @State private var selection = 0
    
    var body: some View {
        VStack {
            TabView(selection: $selection) {
                ForEach(0..<steps.count, id:\.self) { idx in
                    VStack(spacing: 0) {
                        Spacer()
                        Text(steps[idx].title)
                            .font(.largeTitle)
                        Rectangle()
                            .fill(Color.secondary.opacity(0.2))
                            .frame(height: 1)
                        
                        VStack(alignment: .leading) {
                            LottieView(name: steps[idx].animationName)
                                .scaledToFit()
                            
                            Text(steps[idx].detail)
                        }.padding()
                        Spacer()
                    }
                    .tag(idx)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            
            HStack {
                Spacer()
                Button {
                    withAnimation {
                        if selection < steps.count - 1 {
                            selection += 1
                        } else {
                            showOnbording.toggle()
                        }
                    }
                } label: {
                    if selection == steps.count - 1 {
                        Image(systemName: "checkmark.circle")
                            .font(.largeTitle)
                    } else {
                        Image(systemName: "chevron.left.forwardslash.chevron.right")
                            .font(.largeTitle)
                    }
                }
            }
            .padding()
            .foregroundColor(.primary)
        }
    }
}
struct AppOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        AppOnboardingView(showOnbording: .constant(true))
    }
}
