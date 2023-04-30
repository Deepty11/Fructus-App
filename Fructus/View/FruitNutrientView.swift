//
//  FruitNutrientView.swift
//  Fructus
//
//  Created by Rehnuma Reza Deepty on 27/4/23.
//

import SwiftUI

struct FruitNutrientView: View {
    let fruit: FruitDataModel
    var nutrients: [String] = [ "Energy",
                                "Suger",
                                "Fat",
                                "Protein",
                                "Vitamins",
                                "Minerals"]
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider()
                        .padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct FruitNutrientView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientView(fruit: fruits[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 370,
                                  height: 485))
            .padding()
    }
}
