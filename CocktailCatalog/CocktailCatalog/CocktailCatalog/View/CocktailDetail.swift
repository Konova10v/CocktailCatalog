//
//  CocktailDetail.swift
//  CocktailCatalog
//
//  Created by Кирилл Коновалов on 14.08.2020.
//  Copyright © 2020 Кирилл Коновалов. All rights reserved.
//

import SwiftUI

struct CocktailDetail: View {
    @State var cocktail: Cocktail
    @Binding var showDetail: Bool
    
    var body: some View {
        GeometryReader { gr in
            ZStack {
                VStack(spacing: 20) {
                    
                    // Name
                    Text(self.cocktail.drinkName).fontWeight(.bold)
                        .font(.system(size: 60))
                        .frame(height: gr.size.height * 1/10)
                        .minimumScaleFactor(0.5)
                        .foregroundColor(Color.white)
                        
                    // Cocktail image
                    AsyncImage(url: URL(string: self.cocktail.imageString)!,
                               placeholder: Text("Loading"),
                               configuration: {$0.resizable() }
                    )
                        .frame(width: gr.size.height * 3 / 10, height: gr.size.height * 3 / 10)
                        .background(Color.red)
                        .cornerRadius(30)
                        
                    // Category
                    VStack {
                        VStack(spacing: 20) {
                            Text("\(self.cocktail.alcoholic)")
                                .font(.system(size: 50))
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                                .frame(height: gr.size.height * 0.7/10)
                                    .minimumScaleFactor(0.5)
                        }
                    }
                    // Ingredients View
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 20){
                            CocktailIngredient(nameIngredient: self.cocktail.ingredient1, icon: self.cocktail.imageString, quantity: self.cocktail.measurement2)
                            
                            CocktailIngredient(nameIngredient: self.cocktail.ingredient2, icon: self.cocktail.imageString, quantity: self.cocktail.measurement2)
                            
                            CocktailIngredient(nameIngredient: self.cocktail.ingredient3, icon: self.cocktail.imageString, quantity: self.cocktail.measurement3)
                            
                            CocktailIngredient(nameIngredient: self.cocktail.ingredient4, icon: self.cocktail.imageString, quantity: self.cocktail.measurement4)
                            
                            CocktailIngredient(nameIngredient: self.cocktail.ingredient5, icon: self.cocktail.imageString, quantity: self.cocktail.measurement5)
                            
                            CocktailIngredient(nameIngredient: self.cocktail.ingredient6, icon: self.cocktail.imageString, quantity: self.cocktail.measurement6)
                            
                        }.frame(width: gr.size.height * 5 / 5 , height: gr.size.height * 2 / 10)
                            .padding(.horizontal)
                            .background(Color.white)
                            .cornerRadius(30)
                    }
                }.frame(minWidth: 0, maxWidth: .infinity, minHeight: gr.size.height, alignment: .bottom)
                    .background(Color("MainCellColor"))
                    .clipShape(CustomShape(), style: FillStyle.init(eoFill: true, antialiased: true))
                
                // Close icon
                HStack {
                    Image(systemName: "xmark")
                        .resizable()
                        .foregroundColor(Color.red)
                        .frame(width: 20, height: 20)
                }.padding(20)
                    .background(Color.white)
                    .cornerRadius(100)
                    .offset(x: 0, y: -gr.size.height / 2)
                    .shadow(radius: 20)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            self.showDetail.toggle()
                        }
                    }
                }
            }
        }
    }


struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        let cornerRadius: CGFloat = 40
        var path = Path()
    
        path.move(to: CGPoint(x: 0, y: cornerRadius))
        path.addQuadCurve(to: CGPoint(x: cornerRadius, y: 0), control: CGPoint.zero)
        path.addLine(to: CGPoint(x: rect.width - cornerRadius, y: 0))
        path.addQuadCurve(to: CGPoint(x: rect.width, y: cornerRadius), control: CGPoint(x: rect.width, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        path.addLine(to: CGPoint(x: 0, y: rect.height))
        path.closeSubpath()
    
        return path
    }
}

struct CocktailDetail_Previews: PreviewProvider {
    static var previews: some View {
        CocktailDetail(cocktail: Cocktail.getDefault(), showDetail: .constant(false))
    }
}
