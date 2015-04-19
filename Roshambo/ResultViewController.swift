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
  
  var userSelection: RPSType?
  var deviceSelection: RPSType?
  
  @IBOutlet weak var resultImage: UIImageView!
  @IBOutlet weak var resultText: UILabel!
  
  override func viewWillAppear(animated: Bool) {
    // code

    switch userSelection! {
    case RPSType.Rock :
        switch self.deviceSelection! {
        case RPSType.Scissors :
          resultImage.image = UIImage(named: "RockCrushesScissors")
          resultText.text = "Rock crushes scissors : you win!"
        case RPSType.Paper :
          resultImage.image = UIImage(named: "PaperCoversRock")
          resultText.text = "Paper covers rock : you loose!"
        default :
          resultImage.image = UIImage(named: "itsATie")
          resultText.text = "Rock on Rock : it's a tie!"
        }
    case RPSType.Paper :
        switch self.deviceSelection! {
        case RPSType.Scissors :
            resultImage.image = UIImage(named: "ScissorsCutPaper")
            resultText.text = "Scissors cut paper : you loose!"
        case RPSType.Rock :
            resultImage.image = UIImage(named: "PaperCoversRock")
            resultText.text = "Paper covers rock : you win!"
        default :
            resultImage.image = UIImage(named: "itsATie")
            resultText.text = "Paper on paper : it's a tie!"
        }
    case RPSType.Scissors :
        switch self.deviceSelection! {
        case RPSType.Paper :
            resultImage.image = UIImage(named: "ScissorsCutPaper")
            resultText.text = "Scissors cut paper : you win!"
        case RPSType.Rock :
            resultImage.image = UIImage(named: "RockCrushesScissors")
            resultText.text = "Rock crushes scissors : you loose!"
        default :
            resultImage.image = UIImage(named: "itsATie")
            resultText.text = "Scissors on Scissors : it's a tie!"
        }
    default :
      assert(false, "Error!")
    }
    
  }
  
  override func viewDidLoad() {
    // Show pictures
  }
  
  @IBAction func playAgain(sender: UIButton) {
    self.dismissViewControllerAnimated(true, completion: nil)
  }
  
}