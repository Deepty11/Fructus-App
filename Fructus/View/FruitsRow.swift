//
//  FruitsRow.swift
//  Fructus
//
//  Created by Rehnuma Reza Deepty on 18/4/23.
//

import SwiftUI

struct FruitsRow: View {
    var fruit: FruitDataModel
    
    var body: some View {
        HStack(spacing: 10){
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80,
                       height: 80)
                .shadow(color: Color.black.opacity(0.2),
                        radius: 2, x: 2, y: 2)
                .background(.linearGradient(
                    Gradient(colors: fruit.gradientColors),
                    startPoint: .top,
                    endPoint: .bottom))
                .cornerRadius(8)
            
            
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
        }
    }
}

struct FruitsRow_Previews: PreviewProvider {
    static var previews: some View {
        FruitsRow(fruit: fruits[1])
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
