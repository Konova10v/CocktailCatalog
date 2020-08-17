//
//  Search.swift
//  CocktailCatalog
//
//  Created by Кирилл Коновалов on 14.08.2020.
//  Copyright © 2020 Кирилл Коновалов. All rights reserved.
//

import SwiftUI

struct CocktailCell: View {
    
    @State var cocktail: Cocktail
    @Environment(\.imageCache) var cache: ImageCache
    
    var body: some View {
        ZStack {
            AsyncImage(url: URL(string: cocktail.imageString)!,
                       cache: self.cache,
                       placeholder: Text("Loading"),
                       configuration: {$0.resizable() }
            )
                .aspectRatio(contentMode: .fill)
            
            VStack(spacing: 10) {
                Text("\(cocktail.drinkName)")
                    .foregroundColor(Color.white)
                    .fontWeight(Font.Weight.heavy)
                    .font(Font.system(size: 50))
                    .shadow(color: .gray, radius: 10, x: 0, y: 0)
                
                Text("\(cocktail.alcoholic)")
                    .foregroundColor(Color.white)
                    .font(.title)
                    .padding(.vertical)
                    .shadow(color: .gray, radius: 10, x: 0, y: 0)
            }
        }
    }
    
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        CocktailCell(cocktail: Cocktail.getDefault())
    }
}
