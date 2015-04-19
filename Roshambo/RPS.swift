//
//  RPS.swift
//  Roshambo
//
//  Created by Talg on 18.04.15.
//  Copyright (c) 2015 Andreas Talg. All rights reserved.
//

import Foundation

enum RPSType {
  
  case Rock, Paper, Scissors
  
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