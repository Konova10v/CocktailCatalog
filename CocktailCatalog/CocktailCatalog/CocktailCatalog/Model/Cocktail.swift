//
//  Cocktail.swift
//  CocktailCatalog
//
//  Created by Кирилл Коновалов on 13.08.2020.
//  Copyright © 2020 Кирилл Коновалов. All rights reserved.
//

import Foundation

struct Cocktail: Hashable {
    var drinkName: String = ""
    var imageString: String = ""
    var alcoholic: String = ""
    
    var instructions: String = ""
    
    var ingredient1: String = ""
    var ingredient2: String = ""
    var ingredient3: String = ""
    var ingredient4: String = ""
    var ingredient5: String = ""
    var ingredient6: String = ""
    var ingredient7: String = ""
    var ingredient8: String = ""
    var ingredient9: String = ""
    var ingredient10: String = ""
    
    var measurement1: String = ""
    var measurement2: String = ""
    var measurement3: String = ""
    var measurement4: String = ""
    var measurement5: String = ""
    var measurement6: String = ""
    var measurement7: String = ""
    var measurement8: String = ""
    var measurement9: String = ""
    var measurement10: String = ""
    
    
    
    init (json: [String: Any]) {
        if let drinkName = json["strDrink"] { self.drinkName = "\(drinkName)" }
        if let imageString = json["strDrinkThumb"] { self.imageString = "\(imageString)" }
        if let alcoholic = json["strAlcoholic"] { self.alcoholic = "\(alcoholic)" }
        
        if let instructions = json["strInstructions"] { self.instructions = "\(instructions)" }
        
        if let ingredient1 = json["strIngredient1"] { self.ingredient1 = "\(ingredient1)" }
        if let ingredient2 = json["strIngredient2"] { self.ingredient2 = "\(ingredient2)" }
        if let ingredient3 = json["strIngredient3"] { self.ingredient3 = "\(ingredient3)" }
        if let ingredient4 = json["strIngredient4"] { self.ingredient4 = "\(ingredient4)" }
        if let ingredient5 = json["strIngredient5"] { self.ingredient5 = "\(ingredient5)" }
        if let ingredient6 = json["strIngredient6"] { self.ingredient6 = "\(ingredient6)" }
        if let ingredient7 = json["strIngredient7"] { self.ingredient7 = "\(ingredient7)" }
        if let ingredient8 = json["strIngredient8"] { self.ingredient8 = "\(ingredient8)" }
        if let ingredient9 = json["strIngredient9"] { self.ingredient9 = "\(ingredient9)" }
        if let ingredient10 = json["strIngredient10"] { self.ingredient10 = "\(ingredient10)" }
        
        if let measurement1 = json["strMeasure1"] { self.measurement1 = "\(measurement1)" }
        if let measurement2 = json["strMeasure2"] { self.measurement2 = "\(measurement2)" }
        if let measurement3 = json["strMeasure3"] { self.measurement3 = "\(measurement3)" }
        if let measurement4 = json["strMeasure4"] { self.measurement4 = "\(measurement4)" }
        if let measurement5 = json["strMeasure5"] { self.measurement5 = "\(measurement5)" }
        if let measurement6 = json["strMeasure6"] { self.measurement6 = "\(measurement6)" }
        if let measurement7 = json["strMeasure7"] { self.measurement7 = "\(measurement7)" }
        if let measurement8 = json["strMeasure8"] { self.measurement8 = "\(measurement8)" }
        if let measurement9 = json["strMeasure9"] { self.measurement9 = "\(measurement9)" }
        if let measurement10 = json["strMeasure10"] { self.measurement10 = "\(measurement10)" }
    }
    
    static func getModels(_ json: [[String : Any]]) -> [Cocktail] {
        return json.map { Cocktail(json: $0)}
    }
    
    static func getDefault() -> Cocktail {
        let data: [String: Any] = [
            "strDrink": "A1",
            "strDrinkThumb": "https://www.thecocktaildb.com/images/media/drink/2x8thr1504816928.jpg",
            "strAlcoholic": "Alcogolic",
            "strInstructions": "Mix and fill up with soda water. Drunk by finns on a sunny day any time of the year and day" ]
        
        return Cocktail(json: data)
    }
}

