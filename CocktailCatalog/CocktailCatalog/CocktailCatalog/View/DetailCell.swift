//
//  DetailCell.swift
//  CocktailCatalog
//
//  Created by Кирилл Коновалов on 16.08.2020.
//  Copyright © 2020 Кирилл Коновалов. All rights reserved.
//

import Foundation
import SwiftUI

struct DetailCell: View {
    @State var key: String
    @ObservedObject var detailVM: DetailViewModel
    
    @Environment(\.imageCache) var cache: ImageCache
    
    var body: some View {
        VStack(spacing: 10) {
            if !key.isEmpty {
                Text("\(key)")
                    .foregroundColor(Color.white)
                    .fontWeight(Font.Weight.heavy)
                    .font(Font.system(size: 15))
                
                getImage(key: key)
            }
        }
        .frame(width: 150, height: 500)
        .padding(.horizontal)
    }
    
    func getImage(key: String) -> some View {
        let newString = key.replacingOccurrences(of: " ", with: "%20", options: .literal, range: nil)
        
        return AsyncImage(url: URL(string: "https://www.thecocktaildb.com/images/ingredients/\(newString)-Medium.png")!,
                   cache: self.cache,
                   placeholder: Text("Loading"),
                   configuration: {$0.resizable() }
        )
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .shadow(radius: 10)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
    }
}

struct DetailCell_Previews: PreviewProvider {
    static var previews: some View {
        DetailCell(key: "Vodka", detailVM: DetailViewModel())
            .background(Color.black)
    }
}
