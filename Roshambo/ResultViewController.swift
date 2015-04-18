//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Andreas Talg on 16.04.15.
//  Copyright (c) 2015 Andreas Talg. All rights reserved.
//

import Foundation
import UIKit



class ResultViewController: UIViewController {
    
    var userSelection: Int?
    var deviceSelection: Int?
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultText: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        // code
        println("\(self.userSelection)")
    }
    
    override func viewDidLoad() {
        // Show pictures
    }
    
    @IBAction func playAgain(sender: UIButton) {
    }
    
}