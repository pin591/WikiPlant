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
    let dangerous: Bool
    let description: String
    let observation: String
    let image: String
    let location: String
    let uses: [String]
    let activeComponents: [String]
    
    init(name:String, dangerous: Bool, description:String, observation:String,
         image:String, location: String,uses: [String], activeComponents: [String]) {
        
        self.name = name
        self.dangerous = dangerous
        self.description = description
        self.observation = observation
        self.image = image
        self.location = location
        self.uses = uses
        self.activeComponents = activeComponents
    }
}
