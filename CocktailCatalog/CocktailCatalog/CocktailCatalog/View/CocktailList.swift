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
        VStack(alignment: .center) {
            NavBarView()
            
            ZStack() {
                ScrollView(.vertical, showsIndicators: false) {
                    
                    Text("Random Coctail")
                    .foregroundColor(Color.black)
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    VStack {
                        if !contentVM.cocktailRandom.isEmpty {
                            ForEach($contentVM.cocktailRandom.wrappedValue, id: \.self) { random in
                                CocktailCell(cocktail: random)
                                    .cornerRadius(CGFloat(20))
                                    .padding()
                            }
                        }
                    }
                    
//                    Text("A")
//                        .foregroundColor(Color.black)
//                        .font(.system(size: 22))
//                        .fontWeight(.bold)
//                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//                        .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        if !contentVM.cocktailLetterA.isEmpty {
                            HStack(spacing: 20) {
                                ForEach($contentVM.cocktailLetterA.wrappedValue, id: \.self) { random in
                                    CocktailCell(cocktail: random)
                                        .cornerRadius(CGFloat(20))
                                        .frame(width: 300, height: 300, alignment: .center)
                                }
                            }
                        }
                    }
                    .frame(height: 380)
                    .padding(.horizontal)
                    
//                    Text("Z")
//                        .foregroundColor(Color.black)
//                        .font(.system(size: 22))
//                        .fontWeight(.bold)
//                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//                        .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        if !contentVM.cocktailLetterB.isEmpty {
                            HStack(spacing: 20) {
                                ForEach($contentVM.cocktailLetterB.wrappedValue, id: \.self) { leter in
                                    CocktailCell(cocktail: leter)
                                        .cornerRadius(CGFloat(20))
                                        .frame(width: 300, height: 300, alignment: .center)
                                }
                            }
                        }
                    }
                    .frame(height: 380)
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        if !contentVM.cocktailLetterC.isEmpty {
                            HStack(spacing: 20) {
                                ForEach($contentVM.cocktailLetterC.wrappedValue, id: \.self) { leter in
                                    CocktailCell(cocktail: leter)
                                        .cornerRadius(CGFloat(20))
                                        .frame(width: 300, height: 300, alignment: .center)
                                }
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
        contentVM.getRandomCocktail()
        contentVM.getCocktailLeter(leter: "a")
        contentVM.getCocktailLeter(leter: "b")
        contentVM.getCocktailLeter(leter: "c")
    }
    
}

struct CocktailList_Previews: PreviewProvider {
    static var previews: some View {
        CocktailList(contentVM: ContentViewModel())
    }
}
