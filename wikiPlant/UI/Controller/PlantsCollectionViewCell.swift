//
//  PlantsCollectionViewCell.swift
//  wikiPlant
//
//  Created by Ana Rebollo Pin on 23/5/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//

import Foundation

import UIKit

class PlantsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var plantUIImage: UIImageView!
    @IBOutlet var plantNameLabel: UILabel!
    
    func displayContent(name: String) {
        plantUIImage.image = UIImage(named:name)
        plantNameLabel.text = name
    }
}
