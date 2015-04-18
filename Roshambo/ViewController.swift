//
//  ViewController.swift
//  Roshambo
//
//  Created by Andreas Talg on 16.04.15.
//  Copyright (c) 2015 Andreas Talg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func randomSelection () -> RPSType {
    
    let val = arc4random_uniform(3) + 1
    
    switch val {
    case 1 : return RPSType.Paper
    case 2 : return RPSType.Rock
    case 3 : return RPSType.Scissors
    default : return RPSType.Rock
    }
  }
  
  // Rock -> only code version
  @IBAction func selectRock(sender: UIButton) {
    
    var resultController: ResultViewController
    
    resultController = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
    
    resultController.userSelection = randomSelection()
    resultController.deviceSelection = randomSelection()
    
    presentViewController(resultController, animated: true, completion: nil)
  }
  
  @IBAction func selectScissors(sender: UIButton) {
    
  }
  
  @IBAction func selectPaper(sender: UIButton) {
    println("Wert : \(randomSelection())")
  }
}

