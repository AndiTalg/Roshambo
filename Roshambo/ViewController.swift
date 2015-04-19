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
  
  // Rock -> only code version
  @IBAction func selectRock(sender: UIButton) {
    
    var resultController: ResultViewController
    
    resultController = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
    
    resultController.userSelection = RPSType.Rock
    resultController.deviceSelection = randomSelection()
    
    presentViewController(resultController, animated: true, completion: nil)
  }

  @IBAction func selectPaper(sender: UIButton) {
    performSegueWithIdentifier("playPaper", sender: self)
  }

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    let vc = segue.destinationViewController as! ResultViewController
    vc.deviceSelection = randomSelection()
    if segue.identifier == "playPaper" {
      vc.userSelection = RPSType.Paper
    } else if segue.identifier == "playScissors" {
      vc.userSelection = RPSType.Scissors
    }
    }

}

