//
//  SettingsView.swift
//  Fructus
//
//  Created by Rehnuma Reza Deepty on 27/4/23.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    //MARK: - SECTION 1
                    GroupBox(label: SettingsLabelComponent(title: "Fructus",
                                                           icon: "info.circle")) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(10)
                            
                            Text(settingsAppDescription)
                                .font(.footnote)
                            
                        }
                    }
                    
                    
                    
                    //MARK: - SECTION 2
                    //MARK: - SECTION 3
                    
                    GroupBox(label: SettingsLabelComponent(title: "Application",
                                                           icon: "apps.iphone")) {
                        SettingsRow(label: settingsInfoArray[0][0],
                                    value: settingsInfoArray[0][1])// Developer
                        SettingsRow(label: settingsInfoArray[1][0],
                                    value: settingsInfoArray[1][1])// Designer
                        SettingsRow(label: settingsInfoArray[2][0],
                                    value: settingsInfoArray[2][1])// Compatability
                        SettingsRow(label: settingsInfoArray[3][0],
                                    linkLabel: settingsInfoArray[3][1],
                                    linkDestination: settingsInfoArray[3][2])// Website
                        SettingsRow(label: settingsInfoArray[4][0],
                                    linkLabel: settingsInfoArray[4][1],
                                    linkDestination: settingsInfoArray[4][2])// Twitter
                        SettingsRow(label: settingsInfoArray[5][0],
                                    value: settingsInfoArray[5][1])// SwiftUI
                        SettingsRow(label: settingsInfoArray[6][0],
                                    value: settingsInfoArray[6][1])// Version
                    }
                }
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }
                    }
                }
                .padding()
            }
            
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iphone 11 pro")
    }
}
