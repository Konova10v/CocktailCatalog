//
//  DetailViewModel.swift
//  CocktailCatalog
//
//  Created by Кирилл Коновалов on 16.08.2020.
//  Copyright © 2020 Кирилл Коновалов. All rights reserved.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    var ingredientsURL: [String : String] = [String : String]()
    var measurements: [String] = [String]()
    
    func getIngredients(ingredients: [String]) {
        for item in ingredients {
            if item != "<null>" {
                let newString = item.replacingOccurrences(of: " ", with: "%20", options: .literal, range: nil)
                ingredientsURL.updateValue(newString, forKey: item)
            } else {
                break
            }
        }
    }
    
    func getMeasuremens(measurement: [String]) {
        for item in measurement {
            if item != "<null>" {
                measurements.append(item)
            } else {
                break
            }
        }
    }
}
