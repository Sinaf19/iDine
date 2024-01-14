//
//  ContentView.swift
//  iDine
//
//  Created by Quentin Surdez on 14.01.24.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section(section.name) {
                        ForEach(section.items) {item in
                            ItemRow(item: item)
                        }
                    }
                }
            }
            .navigationTitle("Menu")
            .listStyle(GroupedListStyle())
            /*.padding()*/
        }
    }
}

#Preview {
    ContentView()
}
