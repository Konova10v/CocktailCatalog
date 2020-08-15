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
    
    var cocktailRandom: [Cocktail] = [Cocktail]() {
        willSet {
            willChange.send()
        }
    }
    
    var cocktailLetterA: [Cocktail] = [Cocktail]() {
        willSet {
            willChange.send()
        }
    }
    
    var cocktailLetterB: [Cocktail] = [Cocktail]() {
        willSet {
            willChange.send()
        }
    }
    
    var cocktailLetterC: [Cocktail] = [Cocktail]() {
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
                self.cocktailLetterA = response
                self.isVisible = true
            }, onFailure: {(message) in
                print("message \(message)")
            })
        } else if leter == "b" {
            cocktailService.getCoctailLeter(parameters: leter, onSuccess: { (response) in
                self.cocktailLetterB = response
                self.isVisible = true
            }, onFailure: {(message) in
                print("message \(message)")
            })
        } else if leter == "c" {
            cocktailService.getCoctailLeter(parameters: leter, onSuccess: { (response) in
                self.cocktailLetterC = response
                self.isVisible = true
            }, onFailure: {(message) in
                print("message \(message)")
            })
        }
    
    }
}

