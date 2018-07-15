//
//  Plants.swift
//  wikiPlant
//
//  Created by Ana Rebollo Pin on 16/6/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//

import Foundation


class garden {
    
    let plants: [Plant]
    
    init(plants:[Plant]) {
        self.plants = plants
    }
    let acebo = Plant(name: "acebo")
    let achicoria = Plant(name: "achicoria")
    let agracejo = Plant(name: "agracejo")
    let agrimonia = Plant(name: "agrimonia")
    let angelica = Plant(name: "angelica")
    let arnica = Plant(name: "arnica")
    let calendula = Plant(name: "calendula")
    let cardoSanto = Plant(name: "cardo santo")
    let castaño = Plant(name: "castaño")
    let centaureaMenor = Plant(name: "centaurea menor")
    let dienteDeLeon = Plant(name: "diente de leon")
    
    
    let garden = [achicoria , agracejo, agrimonia, angelica, arnica,
                calendula, cardoSanto ,castaño, centaureaMenor, dienteDeLeon]
  
}


