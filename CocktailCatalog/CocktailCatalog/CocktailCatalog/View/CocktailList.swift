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
    @State var cocktails: Cocktail
    
    var detailSize = CGSize(width: 0, height: UIScreen.main.bounds.height)
    
    var body: some View {
        VStack {
            NavBarView()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach($contentVM.cocktailList.wrappedValue, id: \.self) { cocktail in
                        CocktailRow(cocktail: cocktail).onTapGesture {
                            withAnimation(.none) {
                                self.showDatail.toggle()
                                self.cocktails = cocktail
                            }
                        }
                    }
                }
                CocktailDetail(cocktail: cocktails, showDetail: $showDatail)
                    .offset(self.showDatail ? CGSize.zero : detailSize)
                    .edgesIgnoringSafeArea(.bottom)
            }
        }.onAppear(perform: fetch)
    }
    
    private func fetch() {
        contentVM.getCocktail()
    }
    
}

struct CocktailList_Previews: PreviewProvider {
    static var previews: some View {
        CocktailList(contentVM: ContentViewModel(), cocktails: Cocktail.getDefault())
    }
}
