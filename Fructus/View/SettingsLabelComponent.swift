//
//  SettingsLabelComponent.swift
//  Fructus
//
//  Created by Rehnuma Reza Deepty on 30/4/23.
//

import SwiftUI

struct SettingsLabelComponent: View {
    var title: String
    var icon: String
    
    var body: some View {
        HStack {
            Text(title.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: icon)
        }
    }
}

struct SettingsLabelComponent_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelComponent(title: "fructus",
                               icon: "info.circle")
            .previewLayout(.sizeThatFits)
    }
}
