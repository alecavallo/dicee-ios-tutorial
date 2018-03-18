//
//  ViewController.swift
//  Dicee
//
//  Created by Pablo Gonzaga on 3/17/18.
//  Copyright © 2018 Pablo Gonzaga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndexLeft : Int = 0
    var randomDiceIndexRight : Int = 0

    let dices : [String] = [
        "dice1", "dice2", "dice3", "dice4", "dice5", "dice6"
    ]

    @IBOutlet weak var diceImageViewLeft: UIImageView!
    @IBOutlet weak var diceImageViewRight: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages() {

        randomDiceIndexLeft = Int(arc4random_uniform(6))
        randomDiceIndexRight = Int(arc4random_uniform(6))
        
        diceImageViewLeft.image = UIImage(
            named: dices[randomDiceIndexLeft]
        )
        
        diceImageViewRight.image = UIImage(
            named: dices[randomDiceIndexRight]
        )

    }
    
}

