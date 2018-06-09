//
//  PlantsDetailsViewController.swift
//  wikiPlant
//
//  Created by Ana Rebollo Pin on 27/5/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//

import UIKit

class PlantsDetailsViewController: UIViewController {
    
    @IBOutlet weak var usesUILabel: UILabel!
    @IBOutlet weak var activeComponentsUILabel: UILabel!
    @IBOutlet weak var plantPictureUIImage: UIImageView!
    
    var plantName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activeComponentsUILabel.text = ""
        usesUILabel.text = plantName
//        plantName = plantName
        plantPictureUIImage.image = UIImage(named:plantName)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
}
