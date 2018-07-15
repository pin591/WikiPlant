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
    
    let reuseIdentifier = "plantCell"
    let garden = Garden();
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return garden.numberOfPlantsInGarden()
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell( withReuseIdentifier: reuseIdentifier,
                                        for: indexPath) as! PlantsCollectionViewCell
        let plant = garden.plantNameByPosition(indexPath: indexPath)
        cell.displayContent(plant: plant)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
            let yourWidth = collectionView.bounds.width/3.0
            let yourHeight = yourWidth
            return CGSize(width: yourWidth, height: yourHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is PlantsDetailsViewController{
            let destination = segue.destination as! PlantsDetailsViewController
           // destination.plantName = plants[actualRow]
        }
    }*/
}

