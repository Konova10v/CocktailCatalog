//
//  CocktailRow.swift
//  CocktailCatalog
//
//  Created by Кирилл Коновалов on 14.08.2020.
//  Copyright © 2020 Кирилл Коновалов. All rights reserved.
//

import SwiftUI

struct CocktailRow: View {
    @State var cocktail: Cocktail
    @Environment(\.imageCache) var cache: ImageCache
    var body: some View {
        
        VStack(spacing: 25) {
            Text(cocktail.drinkName)
                .fontWeight(.bold)
                .font(.title)
                .foregroundColor(.white)
                .offset(CGSize(width: 0, height: 20))
            
                AsyncImage(url: URL(string: cocktail.imageString)!,
                           cache: self.cache,
                           placeholder: Text("Loading"),
                           configuration: {$0.resizable() }
                )
                    .frame(width: 150, height: 200)
                    .background(Color.black)
                    .cornerRadius(30)
            Text(cocktail.alcoholic)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .offset(CGSize(width: 0, height: 15))
                .padding(.top, -30)
        }
        .frame(width: 200, height: 300)
        .background(Color("MainCellColor"))
        .cornerRadius(30)
        .shadow(color: Color("MainCellColor").opacity(0.7),
                radius: 10,
                x: 0,
                y: 0)
    }
}

struct CocktailRow_Previews: PreviewProvider {
    static var previews: some View {
        CocktailRow(cocktail: Cocktail.getDefault())
    }
}
