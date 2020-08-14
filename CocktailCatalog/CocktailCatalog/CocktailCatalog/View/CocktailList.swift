//
//  CocktailList.swift
//  CocktailCatalog
//
//  Created by Кирилл Коновалов on 14.08.2020.
//  Copyright © 2020 Кирилл Коновалов. All rights reserved.
//

import SwiftUI

struct CocktailList: View {
    @ObservedObject var contentVM: ContentViewModel
    @State private var showDatail = false
    
    var detailSize = CGSize(width: 0, height: UIScreen.main.bounds.height)
    
    var body: some View {
        VStack {
            NavBarView()
            
            ZStack {
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach($contentVM.cocktailRandom.wrappedValue, id: \.self) { random in
                        RandomCocktail(cocktail: random)
                            .cornerRadius(CGFloat(20))
                            .padding()
                    }
                    
                    Text("A")
                        .foregroundColor(Color.black)
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.top)
                        .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach($contentVM.cocktailList.wrappedValue, id: \.self) { random in
                                RandomCocktail(cocktail: random)
                                    .cornerRadius(CGFloat(20))
                                    .padding()
                            }
                        }
                    }
                    .frame(height: 380)
                    .padding(.horizontal)
                }
            }
        }.onAppear(perform: fetch)
    }
    
    private func fetch() {
        contentVM.getCocktail()
        contentVM.getRandomCocktail()
    }
    
}

struct CocktailList_Previews: PreviewProvider {
    static var previews: some View {
        CocktailList(contentVM: ContentViewModel())
    }
}
