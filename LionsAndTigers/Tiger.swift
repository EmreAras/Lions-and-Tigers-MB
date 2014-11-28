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
    
    func chuffANumberOfTimes (numberOfTimes: Int, isLoud: Bool)
    {
        
        for var chuffTimes = 1; chuffTimes <= numberOfTimes; chuffTimes++
        
        {
            if isLoud
            {
                chuff()
            }
            
            else
            {
                println("Tiger: purr purr")
            }
            
        }
    }
    
    func ageInYearsFromAge (regularAge: Int) -> Int
    {
        
        let newAge  = regularAge * 3
        return newAge
        
        
    }
    
    func randomFact () -> String
    {
        
        var randomFact:String
        
        let randomNumber = Int(arc4random_uniform(UInt32(3)))
        
        if randomNumber == 0
        {
            randomFact = "Tiget is the biggest species in the cat family"
        }
        
        else if randomNumber == 0
        {
            randomFact = "Tiget can reach  length of 3.3 meters"
        }
        
        else
        {
            randomFact = "A group of tigers is known as an 'ambush' or 'streak'"
        }
        
        return randomFact
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}


















