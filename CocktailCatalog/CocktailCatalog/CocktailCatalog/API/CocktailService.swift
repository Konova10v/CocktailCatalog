//
//  CocktailService.swift
//  CocktailCatalog
//
//  Created by Кирилл Коновалов on 14.08.2020.
//  Copyright © 2020 Кирилл Коновалов. All rights reserved.
//

import Foundation
import SwiftyJSON

class CocktailService {
    
    public func getRandomCocktail(onSuccess successCallback: ((_ response: [Cocktail]) -> Void)?,
                               onFailure failureCallback: ((_ errorMessage: String) -> Void)?) {
        
        let url = apiBaseUrl + ServerAPI.random
        
        APICallManager.shared.createRequest(url, method: .get, headers: nil, parameters: nil, onSuccess: { (responseObject: JSON) -> Void in
            var data = [Cocktail]()
            if let cocktailList = responseObject["drinks"].arrayObject as? [[String : Any]] {
                data = Cocktail.getModels(cocktailList)
            }
            successCallback?(data)
            
        }, onFailure: {(errorMessage: String) -> Void in
            failureCallback?(errorMessage)
        })
    }
    
    public func getCoctailLeter(parameters: String,
                                onSuccess successCallback: ((_ response: [Cocktail]) -> Void)?,
                                onFailure failureCallback: ((_ errorMessage: String) -> Void)?) {
        
        let leter: String = parameters
        let url = ServerAPI.baseURL + ServerAPI.leter + leter
        
        APICallManager.shared.createRequest(url, method: .get, headers: nil, parameters: nil, onSuccess: { (responseObject: JSON) -> Void in
            var data = [Cocktail]()
            if let cocktailList = responseObject["drinks"].arrayObject as? [[String : Any]] {
                data = Cocktail.getModels(cocktailList)
            }
            successCallback?(data)
            
        }, onFailure: {(errorMessage: String) -> Void in
            failureCallback?(errorMessage)
        })
    }
}

