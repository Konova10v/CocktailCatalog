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
            VStack {
                Text(self.nameIngredient)
                    .foregroundColor(Color.black)
                
//                AsyncImage(url: URL(string: self.icon)!,
//                           placeholder: Text("Loading"),
//                           configuration: {$0.resizable() }
//                )
//                    .frame(width: gr.size.height * 1/4, height: gr.size.height * 1/4)
//                    .background(Color.red)
//                    .cornerRadius(30)
                
                Text(self.quantity)
                    .font(.system(size: 24))
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
