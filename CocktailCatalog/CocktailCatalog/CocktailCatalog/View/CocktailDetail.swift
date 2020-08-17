//
//  CocktailDetail.swift
//  CocktailCatalog
//
//  Created by Кирилл Коновалов on 16.08.2020.
//  Copyright © 2020 Кирилл Коновалов. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var detailVM: DetailViewModel
    @State var cocktail: Cocktail
    @Binding var showDetails: Bool
    
    
    var body: some View {
        GeometryReader { gr in
            ZStack {
                VStack(spacing: 20) {
                    // Day text
                    Text(self.cocktail.drinkName).fontWeight(.bold)
                        .font(.system(size: 60))
                        .frame(height: gr.size.height * 1/10)
                        .minimumScaleFactor(0.5)
                        .foregroundColor(Color.white)
                        .padding(.horizontal)
                    
                    Text("Ingredients")
                        .font(.system(size: 30))
                        .frame(height: gr.size.height * 1/10)
                        .minimumScaleFactor(0.5)
                        .foregroundColor(Color.white)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        self.getIngredients()
                    }
                    .frame(height: 350)
                    .padding(.horizontal)
                }
            }
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
    
    func getIngredients() -> some View {
        let ingredients: [String] = [cocktail.ingredient1, cocktail.ingredient2, cocktail.ingredient3, cocktail.ingredient4, cocktail.ingredient5, cocktail.ingredient6, cocktail.ingredient7, cocktail.ingredient8, cocktail.ingredient9, cocktail.ingredient10]
        self.detailVM.getIngredients(ingredients: ingredients)
        
        let measurement: [String] = [cocktail.measurement1, cocktail.measurement2, cocktail.measurement3, cocktail.measurement4, cocktail.measurement5, cocktail.measurement6, cocktail.measurement7, cocktail.measurement8, cocktail.measurement9, cocktail.measurement10]
        self.detailVM.getMeasuremens(measurement: measurement)
        
        return HStack() {
            ForEach(self.$detailVM.ingredientsURL.wrappedValue.keys.sorted(), id: \.self) { key in
                ForEach(self.$detailVM.measurements.wrappedValue, id: \.self) { measurement in
                    DetailCell.init(key: key, value: self.detailVM.ingredientsURL[key]!, measurement: measurement)
                    }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(detailVM: DetailViewModel(), cocktail: Cocktail.getDefault(), showDetails: .constant(false))
    }
}
