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
        NavigationStack {
            List {
                ForEach(menu) { section in
                    Section(section.name) {
                        ForEach(section.items) {item in
                            NavigationLink(value: item) {
                                ItemRow(item: item)
                            }
                        }
                    }
                    .font(.title3)
                }
            }
            .navigationDestination(for: MenuItem.self) { item in
                ItemDetail(item: item)
            }
            .navigationTitle("Menu")
            .navigationBarTitleDisplayMode(.inline)
            .listStyle(GroupedListStyle())
        }
    }
}

#Preview {
    ContentView()
}
