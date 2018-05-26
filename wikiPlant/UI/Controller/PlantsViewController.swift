//
//  PlantsViewController.swift
//  wikiPlant
//
//  Created by Ana Rebollo Pin on 23/5/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//

import UIKit

class PlantsViewController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet weak var PlantsCollectionView: UICollectionView!
    let reuseIdentifier = "cell"
    
    let plants = ["Acebo", "Achicoria", "Agracejo", "Agrimonia", "Angelica", "Arnica", "Calendula",
                  "Cardo santo", "Castaño","Centaurea menor", "Diente de leon", "Enebro", "Estragon", "Eucalipto",
                  "Gatuña", "Madroño", "Malva", "Manzanilla", "Membrillero", "Menta", "Milenrama", "Morera", "Nispero",
                  "Nogal", "Olivo", "Olmo", "Ortiga mayor", "Pensamiento", "Peral", "Perejil", "Pimpinela menor",
                  "Poleo", "Primula", "Puerro", "Pulmonaria", "Rabano", "Romero", "Rosal silvestre", "Salicaria", "Salvia",
                  "Sauco", "Serpol", "Tilo", "Tomillo", "Tormentila", "Toronjil", "Ulmaria", "Uva de gato", "Valeriana",
                  "Vara de oro", "Verbena", "Violeta", "Yezgo", "Zanahoria", "Zarza", "Zurrón de pastor"];

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return plants.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "plantCell",
            for: indexPath) as! PlantsCollectionViewCell
        
        let plant = plants[indexPath.row]
        cell.displayContent(name: plant)
        return cell
    }
}

