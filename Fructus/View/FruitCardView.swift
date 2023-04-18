//
//  FruitCardView.swift
//  Fructus
//
//  Created by Rehnuma Reza Deepty on 12/4/23.
//

import SwiftUI

struct FruitCardView: View {
    @State private var isAnimating: Bool = false
    
    var fruitDataModel: FruitDataModel
    
    var body: some View {
        ZStack {
            VStack {
                //FRUIT: Image
                Image(fruitDataModel.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.2),
                            radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                //FRUIT: Title
                Text(fruitDataModel.title)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.2),
                            radius: 2, x: 2, y: 2)
                //FRUIT: Headline
                Text(fruitDataModel.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                //Button: Start
                StartButtonView()
                    .padding(.top, 20)

            }
        }
        .onAppear {
            withAnimation(.easeOut(duration: 1)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0,
               maxWidth: .infinity,
               minHeight: 0,
               maxHeight: .infinity,
               alignment: .center)
        .background(.linearGradient(Gradient(
            colors: [
                fruitDataModel.gradientColors[0],
                fruitDataModel.gradientColors[1]]),
                                    startPoint: .top,
                                    endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruitDataModel: fruits[0])
            .previewLayout(.fixed(width: 320,
                                  height: 640))
    }
}
