//
//  ContentViewModel.swift
//  CocktailCatalog
//
//  Created by Кирилл Коновалов on 13.08.2020.
//  Copyright © 2020 Кирилл Коновалов. All rights reserved.
//

import Foundation
import Combine

class ContentViewModel: ObservableObject {
    
    let willChange = PassthroughSubject<Void, Never>()
    private var cocktailService: CocktailService = CocktailService()
    
    @Published var isVisible: Bool = false
    
    var cocktailList: [Cocktail] = [Cocktail]() {
        willSet {
            willChange.send()
        }
    }
    
    var cocktailRandom: [Cocktail] = [Cocktail]() {
        willSet {
            willChange.send()
        }
    }
    
    func getCocktail() {
        cocktailService.getAllCocktail(onSuccess: { (response) in
            self.cocktailList = response
            self.isVisible = true
        }, onFailure: {(message) in
            print("message \(message)")
        })
    }
    
    func getRandomCocktail() {
        cocktailService.getRandomCocktail(onSuccess: { (response) in
            self.cocktailRandom = response
            self.isVisible = true
        }, onFailure: {(message) in
            print("message \(message)")
        })
    }
}

