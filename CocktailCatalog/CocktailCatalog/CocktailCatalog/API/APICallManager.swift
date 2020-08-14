//
//  APICallManager.swift
//  CocktailCatalog
//
//  Created by Кирилл Коновалов on 14.08.2020.
//  Copyright © 2020 Кирилл Коновалов. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

/// enum с перечеслинение API-endpoints
enum ServerAPI {
    
    static var baseURL = "https://www.thecocktaildb.com/api/json/v1/1"
    //Все коктейли
    static let all = "/search.php?f=a"
    //Поиск по имени
    static let searchName = "/search.php?s={name}"
    //Поиск по ингридиенту
    static let searchIngredient = "/search.php?i="
    //Случайный коктейль
    static let random = "/random.php"
    
}

let apiBaseUrl = ServerAPI.baseURL

class APICallManager {
    static let shared = APICallManager()

    func createRequest(
        _ url: String,
        method: HTTPMethod,
        headers: [String: String]?,
        parameters: AnyObject?,
        onSuccess successCallback: ((JSON) -> Void)?,
        onFailure failureCallback: ((String) -> Void)?
    ) {
        AF.request(url, method: method).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                successCallback?(json)
            case .failure(let error):
                if let callback = failureCallback {
                    callback(error.localizedDescription)
                }
            }
        }
    }
    
}

