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
    
    var cocktailLeter: [Cocktail] = [Cocktail]() {
        willSet {
            willChange.send()
        }
    }
    
    func getRandomCocktail() {
        cocktailService.getRandomCocktail(onSuccess: { (response) in
            self.cocktailRandom = response
            self.isVisible = true
        }, onFailure: {(message) in
            print("message \(message)")
        })
    }
    
    func getCocktailLeter(leter: String) {
        if leter == "a" {
            cocktailService.getCoctailLeter(parameters: leter, onSuccess: { (response) in
                self.cocktailList = response
                self.isVisible = true
            }, onFailure: {(message) in
                print("message \(message)")
            })
        } else if  leter == "b" {
            cocktailService.getCoctailLeter(parameters: leter, onSuccess: { (response) in
                self.cocktailLeter = response
                self.isVisible = true
            }, onFailure: {(message) in
                print("message \(message)")
            })
        }
    }
}

