//
//  FruitsDetailView.swift
//  Fructus
//
//  Created by Rehnuma Reza Deepty on 27/4/23.
//

import SwiftUI

struct FruitsDetailView: View {
    var fruit: FruitDataModel
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    // Inner VStack is to fascilitate the iPad screen
                    // so that the contents are shown in the center
                    VStack(alignment: .leading, spacing: 20) {
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRIENTS
                        FruitNutrientView(fruit: fruit)
                        
                        // SUBHEADLINE
                        Text("Learn more about \(fruit.title.uppercased())")
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // LINKS
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }
                    .padding(20)
                    .frame(maxWidth: 640, alignment: .center)
                    
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct FruitsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsDetailView(fruit: fruits[0])
    }
}
