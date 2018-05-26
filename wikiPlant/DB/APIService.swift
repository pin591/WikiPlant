//
//  ApiService.swift
//  wikiPlant
//
//  Created by Ana Rebollo Pin on 26/5/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//

import Foundation

enum result <T> {
    case Success(T)
    case Error(String)
}

class ApiService {
    
    let endPoint = "https:api.flick.com/services/feeds/photo_public.gne?format=json&tags="
    let plantsquery = "plants"
    let problemsquery = "problems"
    let catalan = "CAT"
    let english = "EN"
    let espanish = "ES"
    
    /*func getDataWith(completion: @escaping (result<String:AnyObject]) -> Void) {
        
        let url = URL(string: endPoint)
        URLSession.shared.dataTask(with: url) {
        (data, response, error)
        }
    }*/
}
