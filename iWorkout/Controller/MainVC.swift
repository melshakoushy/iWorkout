//
//  ViewController.swift
//  iWorkout
//
//  Created by Mahmoud Elshakoushy on 10/30/19.
//  Copyright © 2019 Mahmoud Elshakoushy. All rights reserved.
//

import UIKit
import Intents

class MainVC: UIViewController {
    
    // Outlets
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var timeLbl: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        typeLbl.isHidden = true
        timeLbl.isHidden = true
        
        INPreferences.requestSiriAuthorization { (status) in
            if status == INSiriAuthorizationStatus.authorized {
                print("Autherized")
            } else {
                print("Unautherized")
            }
        }
    }


}

