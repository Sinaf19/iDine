//
//  iDineApp.swift
//  iDine
//
//  Created by Quentin Surdez on 14.01.24.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
