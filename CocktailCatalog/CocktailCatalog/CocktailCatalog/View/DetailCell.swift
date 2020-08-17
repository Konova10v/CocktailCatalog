//
//  DetailCell.swift
//  CocktailCatalog
//
//  Created by Кирилл Коновалов on 16.08.2020.
//  Copyright © 2020 Кирилл Коновалов. All rights reserved.
//

import Foundation
import SwiftUI

struct DetailCell: View {
    
    @State var key: String
    @State var value: String
    @State var measurement: String
    @Environment(\.imageCache) var cache: ImageCache
    
    var body: some View {
        VStack(spacing: 10) {
            if !value.isEmpty {
                Text("\(key)")
                    .foregroundColor(Color.white)
                    .fontWeight(Font.Weight.heavy)
                    .font(Font.system(size: 15))
                
                AsyncImage(url: URL(string: "https://www.thecocktaildb.com/images/ingredients/\(value)-Medium.png")!,
                           cache: self.cache,
                           placeholder: Text("Loading"),
                           configuration: {$0.resizable() }
                )
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                
                Text("\(measurement)")
                    .foregroundColor(Color.white)
                    .fontWeight(Font.Weight.heavy)
                    .font(Font.system(size: 15))
            }
        }
        .frame(width: 150, height: 500)
        .padding(.horizontal)
    }
}

struct DetailCell_Previews: PreviewProvider {
    static var previews: some View {
        DetailCell(key: "Vodka", value: "https://www.thecocktaildb.com/images/ingredients/vodka-Small.png", measurement: "1/2")
    }
}
