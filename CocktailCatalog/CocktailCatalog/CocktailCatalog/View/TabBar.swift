//
//  ContentView.swift
//  CocktailCatalog
//
//  Created by Кирилл Коновалов on 13.08.2020.
//  Copyright © 2020 Кирилл Коновалов. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    @ObservedObject var contentVM: ContentViewModel
    
    var body: some View {
        ZStack(alignment: Alignment.bottom) {
            TabView() {
                CocktailList().tabItem {
                    Image(systemName: "phone.fill")
                }
                
                Search().tabItem {
                    Image(systemName: "magnifyingglass")
                }
                
                CocktailDetail().tabItem {
                    Image(systemName: "magnifyingglass")
                }
            }
        }.onAppear(perform: fetch)
    }
    
    private func fetch() {
        contentVM.getCocktail()
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(contentVM: ContentViewModel())
    }
}
