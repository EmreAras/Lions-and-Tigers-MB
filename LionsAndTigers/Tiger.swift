//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by Emre on 18/10/2014.
//  Copyright (c) 2014 CTS . All rights reserved.
//

import Foundation

import UIKit

struct Tiger  {
    
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named: "")
    
    func chuff()
    {
        println("Tiger: Chuff Chuff")
    }
    
    func chuffNumberOfTimes (numberOfTimes: Int)
    {
        for var chuff = 0; chuff < numberOfTimes; ++chuff
        {
        self.chuff()
        }
    }
    
}


