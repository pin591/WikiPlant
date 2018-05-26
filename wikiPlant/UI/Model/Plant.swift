//
//  Plants.swift
//  wikiPlant
//
//  Created by Ana Rebollo Pin on 23/5/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//

import Foundation
class Plants {
    
    let name: String
    let description: String
    let dangerous: Bool
    let plantDescription: String
    let plantObservation: String
    let plantImage: String
    let plantCountryOfOrigin: String
    let plantUses: [String]
    let plantActiveComponents: [String]
    
    init(name:String, description:String, dangerous: Bool,
        plantDescription:String, plantObservation:String,
        plantImage: String, plantCountryOfOrigin: String,
        plantUses: [String], plantActiveComponents: [String]) {
        
        self.name = name
        self.description = description
        self.dangerous = dangerous
        self.plantDescription = plantDescription
        self.plantObservation = plantObservation
        self.plantImage = plantImage
        self.plantCountryOfOrigin = plantCountryOfOrigin
        self.plantUses = plantUses
        self.plantActiveComponents = plantActiveComponents
    }
}
