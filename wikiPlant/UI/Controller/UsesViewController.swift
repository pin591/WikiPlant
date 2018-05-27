//
//  UsesViewController.swift
//  wikiPlant
//
//  Created by Ana Rebollo Pin on 26/5/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//

import UIKit

class UsesViewController: UIViewController, UICollectionViewDataSource,
UICollectionViewDelegateFlowLayout {
    
    let reuseIdentifier = "usesCell"
    
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
            withReuseIdentifier: reuseIdentifier,
            for: indexPath) as! PlantsCollectionViewCell
        
        let plant = plants[indexPath.row]
        cell.displayContent(name: plant)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let yourWidth = collectionView.bounds.width/3.0
        let yourHeight = yourWidth
        
        return CGSize(width: yourWidth, height: yourHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}

