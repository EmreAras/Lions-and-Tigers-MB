//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by Emre on 18/10/2014.
//  Copyright (c) 2014 CTS . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var breedLabel: UILabel!
    @IBOutlet weak var randomFactLabel: UILabel!

    var myTigers:[Tiger] = []
    
    var lionsArray:[Lion] = []
    
    var currentAnimal = (species: "Tiger", index: 0)
    
    var currentIndex = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        var myTiger = Tiger()
        myTiger.name = "Tigger"
        myTiger.breed = "Bengal"
        myTiger.age = 8
        myTiger.image = UIImage(named: "BengalTiger.jpg")
        
        
        myTiger.age = myTiger.ageInYearsFromAge(myTiger.age)
        
        myTiger.chuff()
        
        self.myTigers.append(myTiger)
        
        println("My Tiger's name is: \(myTiger.name), it's age is \(myTiger.age) and it's breed is \(myTiger.breed), and it's image is \(myTiger.image)")
        
        self.myImageView.image = myTiger.image
        self.nameLabel.text = myTiger.name
        self.ageLabel.text = "\(myTiger.age)"
        self.breedLabel.text = myTiger.breed
        self.randomFactLabel.text = myTiger.randomFact()
        
        var secondTiger = Tiger()
        secondTiger.name = "Tigress"
        secondTiger.breed = "Indochinese"
        secondTiger.age = 2
        secondTiger.image = UIImage(named: "IndochineseTiger.jpg")
        
        secondTiger.age = secondTiger.ageInYearsFromAge(secondTiger.age)
        
        secondTiger.chuff()
        
        myTiger.chuffANumberOfTimes(1, isLoud: true)
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Jacob"
        thirdTiger.breed = "Malayan Tiger"
        thirdTiger.age = 4
        thirdTiger.image = UIImage(named: "MalayanTiger.jpg")
        
        thirdTiger.age = thirdTiger.ageInYearsFromAge(thirdTiger.age)
        
        var fourthTiger = Tiger()
        fourthTiger.name = "Spar"
        fourthTiger.breed = "Siberian Tiger"
        fourthTiger.age = 5
        fourthTiger.image = UIImage(named: "SiberianTiger.jpg")
        
        
        fourthTiger.age = fourthTiger.ageInYearsFromAge(fourthTiger.age)
       
        self.myTigers += [secondTiger, thirdTiger, fourthTiger]
        
        myTiger.chuffNumberOfTimes(3)
        secondTiger.chuffNumberOfTimes(2)
        
        
        var lion = Lion()
        lion.age = 4
        lion.isAlphaMale = false
        lion.image = UIImage(named: "Lion.jpg");
        lion.name = "Mufasa"
        lion.subspecies = "West African"
        
        var lioness = Lion()
        lioness.age = 3
        lion.isAlphaMale = false
        lion.image = UIImage(named: "Lioness.jpeg");
        lion.name = "Sarabi"
        lion.subspecies = "Barbary"
        
        self.lionsArray += [lion, lioness]
        
        
        
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        
        

        
        
}

    
    func updateAnimal ()
    {
        
        switch currentAnimal {
            
        case ("Tiger", _):
            let randomIndex = Int(arc4random_uniform(UInt32(lionsArray.count)))
            currentAnimal = ("Lion", randomIndex)
            
        default:
            let randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
            currentAnimal = ("Tiger", randomIndex)
        }
    
    }

    
    func updateView ()
    {

        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations:
            {
                
                if self.currentAnimal.species == "Tiger" {
                    
                    let tiger = self.myTigers[self.currentAnimal.index]
                
                    self.myImageView.image = tiger.image
                    self.breedLabel.text = tiger.breed
                    self.ageLabel.text = "\(tiger.age)"
                    self.nameLabel.text = tiger.name
                    self.randomFactLabel.text = tiger.randomFact()
                }
                
                self.randomFactLabel.hidden = false
                
            }, completion: { (finished: Bool) -> () in
        })
        
        
        
        
    }



}














