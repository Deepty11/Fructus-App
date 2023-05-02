//
//  ContentView.swift
//  Fructus
//
//  Created by Rehnuma Reza Deepty on 12/4/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isSettingsViewPresented: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitsDetailView(fruit: fruit)) {
                        FruitsRow(fruit: fruit)
                            .padding(.vertical, 4)
                        
                    }
                }
            }
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isSettingsViewPresented = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isSettingsViewPresented) {
                        SettingsView()
                    }

                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle()) // For solving iPAD slide window issue
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
