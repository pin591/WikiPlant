//
//  PlantsViewController.swift
//  wikiPlant
//
//  Created by Ana Rebollo Pin on 23/5/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//

import UIKit

class PlantsViewController: UIViewController, UICollectionViewDataSource,
                           UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var plantsCollectionView: UICollectionView!
    
    let reuseIdentifier = "plantCell"
    var actualRow = 0
    
    let abcSections = ["A","B","C","D","E","F","G", "H", "I", "J", "K", "M", "N", "O",
                      "P", "Q","R","S","T","U","V","W", "X", "Y","Z"]
    
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
        
        actualRow = indexPath.row
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: reuseIdentifier,
            for: indexPath) as! PlantsCollectionViewCell
        
        let plant = plants[actualRow]
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
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return abcSections.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is PlantsDetailsViewController{
            let destination = segue.destination as! PlantsDetailsViewController
            destination.plantName = plants[actualRow]
        }
    }
}

