//
//  OrderView.swift
//  iDine
//
//  Created by Quentin Surdez on 15.01.24.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                    }
                }
                Section {
                    NavigationLink("Place order") {
                        CheckoutView()
                    }
                }
            }
            .navigationTitle("Order")
        }
    }
}

#Preview {
    OrderView().environmentObject(Order())
}
