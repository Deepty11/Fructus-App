//
//  SettingsInfoView.swift
//  Fructus
//
//  Created by Rehnuma Reza Deepty on 30/4/23.
//

import SwiftUI

struct SettingsRow: View {
    var label: String
    var value: String?
    var linkLabel: String?
    var linkDestination: String?
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(label)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                Spacer()
                
                if value != nil {
                    Text(value ?? "")
                        .fontWeight(.bold)
                } else {
                    EmptyView()
                }
                
                if linkDestination != nil && linkLabel != nil {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)

                } else {
                    EmptyView()
                }
                
            }
        }
    }
}

struct SettingsInfoView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRow(label: "Developer",
                    value: "John/ Jane")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
