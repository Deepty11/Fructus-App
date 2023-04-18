//
//  StartButtonView.swift
//  Fructus
//
//  Created by Rehnuma Reza Deepty on 12/4/23.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        Button {
            withAnimation(.linear(duration: 1)) {
                isOnboarding = false
            }
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                    .accentColor(.white)
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
        }
        .background(
            Capsule()
                .strokeBorder(Color.white, lineWidth: 1.25)
        )
        

    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
