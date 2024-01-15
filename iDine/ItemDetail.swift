//
//  ItemDetail.swift
//  iDine
//
//  Created by Quentin Surdez on 15.01.24.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(.white)
                    .font(.caption)
                    .foregroundStyle(.black)
                    /*.offset(x: -15, y: -7)*/
            }
            
            Text(item.description)
                .padding()
            Spacer()
        }
        .navigationTitle(item.name)
    }
}

#Preview {
    NavigationStack {
        ItemDetail(item: MenuItem.example)
    }
}
