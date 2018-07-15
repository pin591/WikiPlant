//
//  Garden.swift
//  wikiPlant
//
//  Created by Ana Rebollo Pin on 16/6/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//

import Foundation


class Garden {
    
    var plants: [Plant]
    
    init() {
        
        let acebo = Plant(name: "Acebo")
        let achicoria = Plant(name: "Achicoria")
        let agracejo = Plant(name: "Agracejo")
        let agrimonia = Plant(name: "Agrimonia")
        let angelica = Plant(name: "Angelica")
        let arnica = Plant(name: "Arnica")
        let calendula = Plant(name: "Calendula")
        let cardoSanto = Plant(name: "Cardo santo")
        let castano = Plant(name: "Castaño")
        let centaureaMenor = Plant(name: "Centaurea menor")
        let dienteDeLeon = Plant(name: "Diente de leon")
        let acebo2 = Plant(name: "Acebo")
        let achicoria2 = Plant(name: "Achicoria")
        let agracejo2 = Plant(name: "Agracejo")
        let agrimonia2 = Plant(name: "Agrimonia")
        let angelica2 = Plant(name: "Angelica")
        let arnica2 = Plant(name: "Arnica")
        let calendula2 = Plant(name: "Calendula")
        let cardoSanto2 = Plant(name: "Cardo santo")
        let castano2 = Plant(name: "Castaño")
        let centaureaMenor2 = Plant(name: "Centaurea menor")
        let dienteDeLeon2 = Plant(name: "Diente de leon")
        
        self.plants = [acebo, achicoria , agracejo, agrimonia, angelica, arnica,
                       calendula, cardoSanto ,castano, centaureaMenor, dienteDeLeon,
                       acebo2, achicoria2 , agracejo2, agrimonia2, angelica2, arnica2,
                       calendula2, cardoSanto2 ,castano2, centaureaMenor2, dienteDeLeon2]
    }
    
    func numberOfPlantsInGarden() -> Int {
       return plants.count
    }
    
    func plantNameByPosition(indexPath: IndexPath) -> Plant {
        let plant = plants[indexPath.row]
        return plant
    }
}


