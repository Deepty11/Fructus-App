//
//  OnboardingView.swift
//  Fructus
//
//  Created by Rehnuma Reza Deepty on 17/4/23.
//

import SwiftUI

struct OnboardingView: View {
    //@AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruitDataModel: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
