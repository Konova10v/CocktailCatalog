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
            Text("Cocktail Catalog")
                .foregroundColor(Color.black)
                .font(.system(size: 22))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                .padding(.horizontal)
            Spacer()
        }
        .padding()
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
    }
}
