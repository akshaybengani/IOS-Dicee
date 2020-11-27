//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var diceOneImage: UIImageView!
    @IBOutlet weak var diceTwoImage: UIImageView!
    
    let diceArray:[String] = ["DiceOne", "DiceTwo", "DiceThree","DiceFour","DiceFive", "DiceSix"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    @IBAction func rollButton(_ sender: Any) {
            
        let diceOneRandomIndex = Int.random(in: 0...diceArray.count - 1)
        let diceTwoRandomIndex = Int.random(in: 0...diceArray.count - 1)
        
        diceOneImage.image = UIImage(named: diceArray[diceOneRandomIndex])
        diceTwoImage.image = UIImage(named: diceArray[diceTwoRandomIndex])
        
        
    }
    
}

