//
//  CocktailIngredient.swift
//  CocktailCatalog
//
//  Created by Кирилл Коновалов on 14.08.2020.
//  Copyright © 2020 Кирилл Коновалов. All rights reserved.
//

import SwiftUI

struct CocktailIngredient: View {
    @State var nameIngredient = "Vodka"
    @State var icon = "test"
    @State var quantity = "1/2"
    
    var body: some View {
        GeometryReader { gr in
            HStack(spacing: 40) {
                Text(self.nameIngredient)
                    .foregroundColor(Color.black)
                    .frame(width: 100)
                Spacer()
                Text(self.quantity)
                    .foregroundColor(Color.black)
                    .fontWeight(.semibold)
            }
        }.padding(.vertical, 30)
    }
}

struct CocktailIngredient_Previews: PreviewProvider {
    static var previews: some View {
        CocktailIngredient()
    }
}
