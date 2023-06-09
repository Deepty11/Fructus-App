//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Rehnuma Reza Deepty on 27/4/23.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit: FruitDataModel
    @State private var isAnimating: Bool  = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors,
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(
                    color: .black.opacity(0.2),
                    radius: 2,
                    x: 6,
                    y:  8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1 : 0.6)
            
        }
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruits[1])
            .previewLayout(.fixed(width: 375,
                                  height: 440))
    }
}
