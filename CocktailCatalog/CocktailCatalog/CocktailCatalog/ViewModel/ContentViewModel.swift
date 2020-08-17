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
    
    // MARK: - Parametrs
    private var cocktailService: CocktailService = CocktailService()
    
    @Published var isVisible: Bool = false
    
    var cocktailRandom: [Cocktail] = [Cocktail]()
    var cocktailLetterA: [Cocktail] = [Cocktail]()
    var cocktailLetterB: [Cocktail] = [Cocktail]()
    var cocktailLetterC: [Cocktail] = [Cocktail]()
    var cocktailLetterD: [Cocktail] = [Cocktail]()
    var cocktailLetterE: [Cocktail] = [Cocktail]()
    var cocktailLetterF: [Cocktail] = [Cocktail]()
    var cocktailLetterG: [Cocktail] = [Cocktail]()
    var cocktailLetterH: [Cocktail] = [Cocktail]()
    var cocktailLetterI: [Cocktail] = [Cocktail]()
    var cocktailLetterJ: [Cocktail] = [Cocktail]()
    var cocktailLetterK: [Cocktail] = [Cocktail]()
    var cocktailLetterL: [Cocktail] = [Cocktail]()
    var cocktailLetterM: [Cocktail] = [Cocktail]()
    var cocktailLetterN: [Cocktail] = [Cocktail]()
    var cocktailLetterO: [Cocktail] = [Cocktail]()
    var cocktailLetterP: [Cocktail] = [Cocktail]()
    var cocktailLetterQ: [Cocktail] = [Cocktail]()
    var cocktailLetterR: [Cocktail] = [Cocktail]()
    var cocktailLetterS: [Cocktail] = [Cocktail]()
    var cocktailLetterT: [Cocktail] = [Cocktail]()
    var cocktailLetterU: [Cocktail] = [Cocktail]()
    var cocktailLetterV: [Cocktail] = [Cocktail]()
    var cocktailLetterW: [Cocktail] = [Cocktail]()
    var cocktailLetterX: [Cocktail] = [Cocktail]()
    var cocktailLetterY: [Cocktail] = [Cocktail]()
    var cocktailLetterZ: [Cocktail] = [Cocktail]()
    
    func getRandomCocktail() {
        cocktailService.getRandomCocktail(onSuccess: { (response) in
            self.cocktailRandom = response
            self.isVisible = true
        }, onFailure: {(message) in
            print("message \(message)")
        })
    }
    
    func getCocktailLeter(leter: String) {
        cocktailService.getCoctailLeter(parameters: leter, onSuccess: { (response) in
            switch leter {
            case "a":
                self.cocktailLetterA = response
            case "b":
                self.cocktailLetterB = response
            case "c":
                self.cocktailLetterC = response
            case "d":
                self.cocktailLetterD = response
            case "e":
                self.cocktailLetterE = response
            case "f":
                self.cocktailLetterF = response
            case "g":
                self.cocktailLetterG = response
            case "h":
                self.cocktailLetterH = response
            case "i":
                self.cocktailLetterI = response
            case "j":
                self.cocktailLetterJ = response
            case "k":
                self.cocktailLetterK = response
            case "l":
                self.cocktailLetterL = response
            case "m":
                self.cocktailLetterM = response
            case "n":
                self.cocktailLetterN = response
            case "o":
                self.cocktailLetterO = response
            case "p":
                self.cocktailLetterP = response
            case "r":
                self.cocktailLetterR = response
            case "s":
                self.cocktailLetterS = response
            case "t":
                self.cocktailLetterT = response
            case "u":
                self.cocktailLetterU = response
            case "v":
                self.cocktailLetterV = response
            case "w":
                self.cocktailLetterW = response
            case "x":
                self.cocktailLetterX = response
            case "y":
                self.cocktailLetterY = response
            case "z":
                self.cocktailLetterZ = response
            default:
                print("Test \(leter)")
            }
            self.isVisible = true
        }, onFailure: {(message) in
            print("message \(message)")
        })
    }
}
