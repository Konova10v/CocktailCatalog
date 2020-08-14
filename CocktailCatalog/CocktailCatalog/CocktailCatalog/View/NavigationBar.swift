//
//  NavigationBar.swift
//  CocktailCatalog
//
//  Created by Кирилл Коновалов on 14.08.2020.
//  Copyright © 2020 Кирилл Коновалов. All rights reserved.
//

import SwiftUI

struct NavBarView: View {
    var body: some View {
        HStack {
            Spacer()
            Text("Cocktail Catalog").font(.title)
            Spacer()
            Image(systemName: "magnifyingglass")
                .resizable()
                .frame(width: 25, height: 25)
        }.padding()
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
    }
}
