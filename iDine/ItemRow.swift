//
//  ItemRow.swift
//  iDine
//
//  Created by Quentin Surdez on 14.01.24.
//

import SwiftUI

struct ItemRow: View {
    let item: MenuItem
    
    let colors: [String: Color] = ["D" : .purple, "G" : .black, "N" : .red, "V" : .green, "S" : .blue]
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 5, height: 10)))
                .overlay(RoundedRectangle(cornerSize: CGSize(width: 5, height: 10)).stroke(.gray, lineWidth: 2))
            
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text("$\(item.price)")
            }
            
            Spacer()
            
            ForEach(item.restrictions, id: \.self) {restriction in
                Text(restriction)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(5)
                    .background(colors[restriction, default: .black])
                    .clipShape(Circle())
                    .foregroundStyle(.white)
                
            }
        }
    }
}

#Preview {
    ItemRow(item: MenuItem.example)
}
