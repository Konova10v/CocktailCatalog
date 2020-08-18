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
    var ingredients: [String] = [String]()
    var measurements: [String] = [String]()
    
    func getIngredients(ingredients: [String]) {
        for item in ingredients {
            if item != "<null>" {
                self.ingredients.append(item)
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
