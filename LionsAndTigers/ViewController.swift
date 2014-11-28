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
        
        
        
        
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        
        
        var randomIndex:Int
        
        do {
        
        randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        
        } while self.currentIndex == randomIndex
        
        self.currentIndex = randomIndex
        
        let tiger = self.myTigers [randomIndex]
        
        
        
//        
//        myImageView.image = tiger.image
//        nameLabel.text = tiger.name
//        ageLabel.text = "\(tiger.age)"
//        breedLabel.text = tiger.breed

        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations:
            {
                self.myImageView.image = tiger.image
                self.nameLabel.text = tiger.name
                self.ageLabel.text = "\(tiger.age)"
                self.breedLabel.text = tiger.breed
                self.randomFactLabel.text = tiger.randomFact()
                
            }, completion: { (finished: Bool) -> () in
        })
        
        
}





}














