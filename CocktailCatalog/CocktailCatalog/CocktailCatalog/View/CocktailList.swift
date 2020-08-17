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
    
    var body: some View {
        VStack(alignment: .center) {
            NavBarView()
            
            ZStack() {
                ScrollView(.vertical, showsIndicators: false) {
                    
                    Text("Random Cocktail")
                    .foregroundColor(Color.black)
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    VStack {
                        if !contentVM.cocktailRandom.isEmpty {
                            ForEach($contentVM.cocktailRandom.wrappedValue, id: \.drinkName) { random in
                                CocktailCell(cocktail: random).onTapGesture {
                                    self.showDatail.toggle()
                                }
                                    
                                    .sheet(isPresented: self.$showDatail, content: {
                                        DetailView(detailVM: DetailViewModel(), cocktail: random, showDetails: self.$showDatail)
                                    })
                                    .cornerRadius(CGFloat(20))
                                    .padding()
                                
                            }
                        }
                    }
                    
                    Group {
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
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            if !contentVM.cocktailLetterB.isEmpty {
                                HStack(spacing: 20) {
                                    ForEach($contentVM.cocktailLetterB.wrappedValue, id: \.self) { random in
                                        CocktailCell(cocktail: random)
                                            .cornerRadius(CGFloat(20))
                                            .frame(width: 300, height: 300, alignment: .center)
                                    }
                                }
                            }
                        }
                        .frame(height: 380)
                        .padding(.horizontal)
                        .padding(.top, -40)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                                  if !contentVM.cocktailLetterC.isEmpty {
                                      HStack(spacing: 20) {
                                          ForEach($contentVM.cocktailLetterC.wrappedValue, id: \.self) { random in
                                              CocktailCell(cocktail: random)
                                                  .cornerRadius(CGFloat(20))
                                                  .frame(width: 300, height: 300, alignment: .center)
                                          }
                                      }
                                  }
                              }
                              .frame(height: 380)
                              .padding(.horizontal)
                            .padding(.top, -40)
                              
                        ScrollView(.horizontal, showsIndicators: false) {
                                  if !contentVM.cocktailLetterD.isEmpty {
                                      HStack(spacing: 20) {
                                          ForEach($contentVM.cocktailLetterD.wrappedValue, id: \.self) { random in
                                              CocktailCell(cocktail: random)
                                                  .cornerRadius(CGFloat(20))
                                                  .frame(width: 300, height: 300, alignment: .center)
                                          }
                                      }
                                  }
                              }
                              .frame(height: 380)
                              .padding(.horizontal)
                              .padding(.top, -40)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            if !contentVM.cocktailLetterE.isEmpty {
                                HStack(spacing: 20) {
                                    ForEach($contentVM.cocktailLetterE.wrappedValue, id: \.self) { random in
                                        CocktailCell(cocktail: random)
                                            .cornerRadius(CGFloat(20))
                                            .frame(width: 300, height: 300, alignment: .center)
                                    }
                                }
                            }
                        }
                        .frame(height: 380)
                        .padding(.horizontal)
                        .padding(.top, -40)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            if !contentVM.cocktailLetterF.isEmpty {
                                HStack(spacing: 20) {
                                    ForEach($contentVM.cocktailLetterF.wrappedValue, id: \.self) { random in
                                        CocktailCell(cocktail: random)
                                            .cornerRadius(CGFloat(20))
                                            .frame(width: 300, height: 300, alignment: .center)
                                    }
                                }
                            }
                        }
                        .frame(height: 380)
                        .padding(.horizontal)
                        .padding(.top, -40)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            if !contentVM.cocktailLetterG.isEmpty {
                                HStack(spacing: 20) {
                                    ForEach($contentVM.cocktailLetterG.wrappedValue, id: \.self) { random in
                                        CocktailCell(cocktail: random)
                                            .cornerRadius(CGFloat(20))
                                            .frame(width: 300, height: 300, alignment: .center)
                                    }
                                }
                            }
                        }
                        .frame(height: 380)
                        .padding(.horizontal)
                        .padding(.top, -40)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            if !contentVM.cocktailLetterH.isEmpty {
                                HStack(spacing: 20) {
                                    ForEach($contentVM.cocktailLetterH.wrappedValue, id: \.self) { random in
                                        CocktailCell(cocktail: random)
                                            .cornerRadius(CGFloat(20))
                                            .frame(width: 300, height: 300, alignment: .center)
                                    }
                                }
                            }
                        }
                        .frame(height: 380)
                        .padding(.horizontal)
                        .padding(.top, -40)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            if !contentVM.cocktailLetterI.isEmpty {
                                HStack(spacing: 20) {
                                    ForEach($contentVM.cocktailLetterI.wrappedValue, id: \.self) { random in
                                        CocktailCell(cocktail: random)
                                            .cornerRadius(CGFloat(20))
                                            .frame(width: 300, height: 300, alignment: .center)
                                    }
                                }
                            }
                        }
                        .frame(height: 380)
                        .padding(.horizontal)
                        .padding(.top, -40)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            if !contentVM.cocktailLetterJ.isEmpty {
                                HStack(spacing: 20) {
                                    ForEach($contentVM.cocktailLetterJ.wrappedValue, id: \.self) { random in
                                        CocktailCell(cocktail: random)
                                            .cornerRadius(CGFloat(20))
                                            .frame(width: 300, height: 300, alignment: .center)
                                    }
                                }
                            }
                        }
                        .frame(height: 380)
                        .padding(.horizontal)
                        .padding(.top, -40)
                    }
                    
                    Group {
                        ScrollView(.horizontal, showsIndicators: false) {
                            if !contentVM.cocktailLetterK.isEmpty {
                                HStack(spacing: 20) {
                                    ForEach($contentVM.cocktailLetterK.wrappedValue, id: \.self) { random in
                                        CocktailCell(cocktail: random)
                                            .cornerRadius(CGFloat(20))
                                            .frame(width: 300, height: 300, alignment: .center)
                                    }
                                }
                            }
                        }
                        .frame(height: 380)
                        .padding(.horizontal)
                        .padding(.top, -40)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            if !contentVM.cocktailLetterL.isEmpty {
                                HStack(spacing: 20) {
                                    ForEach($contentVM.cocktailLetterL.wrappedValue, id: \.self) { random in
                                        CocktailCell(cocktail: random)
                                            .cornerRadius(CGFloat(20))
                                            .frame(width: 300, height: 300, alignment: .center)
                                    }
                                }
                            }
                        }
                        .frame(height: 380)
                        .padding(.horizontal)
                        .padding(.top, -40)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            if !contentVM.cocktailLetterM.isEmpty {
                                HStack(spacing: 20) {
                                    ForEach($contentVM.cocktailLetterM.wrappedValue, id: \.self) { random in
                                        CocktailCell(cocktail: random)
                                            .cornerRadius(CGFloat(20))
                                            .frame(width: 300, height: 300, alignment: .center)
                                    }
                                }
                            }
                        }
                        .frame(height: 380)
                        .padding(.horizontal)
                        .padding(.top, -40)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            if !contentVM.cocktailLetterN.isEmpty {
                                HStack(spacing: 20) {
                                    ForEach($contentVM.cocktailLetterN.wrappedValue, id: \.self) { random in
                                        CocktailCell(cocktail: random)
                                            .cornerRadius(CGFloat(20))
                                            .frame(width: 300, height: 300, alignment: .center)
                                    }
                                }
                            }
                        }
                        .frame(height: 380)
                        .padding(.horizontal)
                        .padding(.top, -40)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            if !contentVM.cocktailLetterO.isEmpty {
                                HStack(spacing: 20) {
                                    ForEach($contentVM.cocktailLetterO.wrappedValue, id: \.self) { random in
                                        CocktailCell(cocktail: random)
                                            .cornerRadius(CGFloat(20))
                                            .frame(width: 300, height: 300, alignment: .center)
                                    }
                                }
                            }
                        }
                        .frame(height: 380)
                        .padding(.horizontal)
                        .padding(.top, -40)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            if !contentVM.cocktailLetterP.isEmpty {
                                HStack(spacing: 20) {
                                    ForEach($contentVM.cocktailLetterP.wrappedValue, id: \.self) { random in
                                        CocktailCell(cocktail: random)
                                            .cornerRadius(CGFloat(20))
                                            .frame(width: 300, height: 300, alignment: .center)
                                    }
                                }
                            }
                        }
                        .frame(height: 380)
                        .padding(.horizontal)
                        .padding(.top, -40)

                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            if !contentVM.cocktailLetterR.isEmpty {
                                HStack(spacing: 20) {
                                    ForEach($contentVM.cocktailLetterR.wrappedValue, id: \.self) { random in
                                        CocktailCell(cocktail: random)
                                            .cornerRadius(CGFloat(20))
                                            .frame(width: 300, height: 300, alignment: .center)
                                    }
                                }
                            }
                        }
                        .frame(height: 380)
                        .padding(.horizontal)
                        .padding(.top, -40)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            if !contentVM.cocktailLetterS.isEmpty {
                                HStack(spacing: 20) {
                                    ForEach($contentVM.cocktailLetterS.wrappedValue, id: \.self) { random in
                                        CocktailCell(cocktail: random)
                                            .cornerRadius(CGFloat(20))
                                            .frame(width: 300, height: 300, alignment: .center)
                                    }
                                }
                            }
                        }
                        .frame(height: 380)
                        .padding(.horizontal)
                        .padding(.top, -40)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            if !contentVM.cocktailLetterT.isEmpty {
                                HStack(spacing: 20) {
                                    ForEach($contentVM.cocktailLetterT.wrappedValue, id: \.self) { random in
                                        CocktailCell(cocktail: random)
                                            .cornerRadius(CGFloat(20))
                                            .frame(width: 300, height: 300, alignment: .center)
                                    }
                                }
                            }
                        }
                        .frame(height: 380)
                        .padding(.horizontal)
                        .padding(.top, -40)
                    }
                    
                    Group {
                        ScrollView(.horizontal, showsIndicators: false) {
                            if !contentVM.cocktailLetterV.isEmpty {
                                HStack(spacing: 20) {
                                    ForEach($contentVM.cocktailLetterV.wrappedValue, id: \.self) { random in
                                        CocktailCell(cocktail: random)
                                            .cornerRadius(CGFloat(20))
                                            .frame(width: 300, height: 300, alignment: .center)
                                    }
                                }
                            }
                        }
                        .frame(height: 380)
                        .padding(.horizontal)
                        .padding(.top, -40)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            if !contentVM.cocktailLetterW.isEmpty {
                                HStack(spacing: 20) {
                                    ForEach($contentVM.cocktailLetterW.wrappedValue, id: \.self) { random in
                                        CocktailCell(cocktail: random)
                                            .cornerRadius(CGFloat(20))
                                            .frame(width: 300, height: 300, alignment: .center)
                                    }
                                }
                            }
                        }
                        .frame(height: 380)
                        .padding(.horizontal)
                        .padding(.top, -40)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            if !contentVM.cocktailLetterY.isEmpty {
                                HStack(spacing: 20) {
                                    ForEach($contentVM.cocktailLetterY.wrappedValue, id: \.self) { random in
                                        CocktailCell(cocktail: random)
                                            .cornerRadius(CGFloat(20))
                                            .frame(width: 300, height: 300, alignment: .center)
                                    }
                                }
                            }
                        }
                        .frame(height: 380)
                        .padding(.horizontal)
                        .padding(.top, -40)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            if !contentVM.cocktailLetterZ.isEmpty {
                                HStack(spacing: 20) {
                                    ForEach($contentVM.cocktailLetterZ.wrappedValue, id: \.self) { random in
                                        CocktailCell(cocktail: random)
                                            .cornerRadius(CGFloat(20))
                                            .frame(width: 300, height: 300, alignment: .center)
                                    }
                                }
                            }
                        }
                        .frame(height: 380)
                        .padding(.horizontal)
                        .padding(.top, -40)
                    }
                }
            }
        }.onAppear(perform: fetch)
    }
    
    private func fetch() {
        contentVM.getRandomCocktail()
        let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
        
        for item in alphabet {
            contentVM.getCocktailLeter(leter: item)
        }
        
        
    }
    
}

struct CocktailList_Previews: PreviewProvider {
    static var previews: some View {
        CocktailList(contentVM: ContentViewModel())
    }
}
