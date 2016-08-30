//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var box1: UIView!
    @IBOutlet weak var box2: UIView!
    @IBOutlet weak var box3: UIView!
    @IBOutlet weak var box4: UIView!
    @IBOutlet weak var box5: UIView!
    @IBOutlet weak var box6: UIView!
    @IBOutlet weak var box7: UIView!
    
    @IBOutlet weak var dice1: UIView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var dice2: UIView!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var dice3: UIView!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var dice4: UIView!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var dice5: UIView!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var dice6: UIView!
    @IBOutlet weak var label6: UILabel!
    
    @IBAction func diceRoller(sender: AnyObject) {
        var diceRolled: Int = randomDiceRoll()
        arrangeDiceBox(diceRolled)
        printDiceRolls(diceRolled)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        box1.backgroundColor = UIColor.clearColor()
        box2.backgroundColor = UIColor.clearColor()
        box3.backgroundColor = UIColor.clearColor()
        box4.backgroundColor = UIColor.clearColor()
        box5.backgroundColor = UIColor.clearColor()
        box6.backgroundColor = UIColor.clearColor()
        box7.backgroundColor = UIColor.clearColor()
        dice1.backgroundColor = UIColor.clearColor()
        dice2.backgroundColor = UIColor.clearColor()
        dice3.backgroundColor = UIColor.clearColor()
        dice4.backgroundColor = UIColor.clearColor()
        dice5.backgroundColor = UIColor.clearColor()
        dice6.backgroundColor = UIColor.clearColor()
        label1.text = " "
        label2.text = " "
        label3.text = " "
        label4.text = " "
        label5.text = " "
        label6.text = " "

        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func printDiceRolls(number: Int) {
        if label1.text == " " {
            label1.text = String(number)
            dice1.backgroundColor = UIColor.redColor()
        } else if label2.text == " " {
            label2.text = String(number)
            dice2.backgroundColor = UIColor.blueColor()
        } else if label3.text == " " {
            label3.text = String(number)
            dice3.backgroundColor = UIColor.redColor()
        } else if label4.text == " " {
            label4.text = String(number)
            dice4.backgroundColor = UIColor.blueColor()
        } else if label5.text == " " {
            label5.text = String(number)
            dice5.backgroundColor = UIColor.redColor()
        } else if label6.text == " " {
            label6.text = String(number)
            dice6.backgroundColor = UIColor.blueColor()
        } else {
            label1.text = label2.text
            label2.text = label3.text
            label3.text = label4.text
            label4.text = label5.text
            label5.text = label6.text
            label6.text = String(number)
        }
    }
    func arrangeDiceBox(number: Int) {
        switch number {
        case 1:
            box1.backgroundColor = UIColor.clearColor()
            box2.backgroundColor = UIColor.clearColor()
            box3.backgroundColor = UIColor.clearColor()
            box4.backgroundColor = UIColor.blackColor()
            box5.backgroundColor = UIColor.clearColor()
            box6.backgroundColor = UIColor.clearColor()
            box7.backgroundColor = UIColor.clearColor()
        case 2:
            box1.backgroundColor = UIColor.clearColor()
            box2.backgroundColor = UIColor.blackColor()
            box3.backgroundColor = UIColor.clearColor()
            box4.backgroundColor = UIColor.clearColor()
            box5.backgroundColor = UIColor.clearColor()
            box6.backgroundColor = UIColor.blackColor()
            box7.backgroundColor = UIColor.clearColor()
        case 3:
            box1.backgroundColor = UIColor.clearColor()
            box2.backgroundColor = UIColor.blackColor()
            box3.backgroundColor = UIColor.clearColor()
            box4.backgroundColor = UIColor.blackColor()
            box5.backgroundColor = UIColor.clearColor()
            box6.backgroundColor = UIColor.blackColor()
            box7.backgroundColor = UIColor.clearColor()
        case 4:
            box1.backgroundColor = UIColor.blackColor()
            box2.backgroundColor = UIColor.blackColor()
            box3.backgroundColor = UIColor.clearColor()
            box4.backgroundColor = UIColor.clearColor()
            box5.backgroundColor = UIColor.clearColor()
            box6.backgroundColor = UIColor.blackColor()
            box7.backgroundColor = UIColor.blackColor()
        case 5:
            box1.backgroundColor = UIColor.blackColor()
            box2.backgroundColor = UIColor.blackColor()
            box3.backgroundColor = UIColor.clearColor()
            box4.backgroundColor = UIColor.blackColor()
            box5.backgroundColor = UIColor.clearColor()
            box6.backgroundColor = UIColor.blackColor()
            box7.backgroundColor = UIColor.blackColor()
        case 6:
            box1.backgroundColor = UIColor.blackColor()
            box2.backgroundColor = UIColor.blackColor()
            box3.backgroundColor = UIColor.blackColor()
            box4.backgroundColor = UIColor.clearColor()
            box5.backgroundColor = UIColor.blackColor()
            box6.backgroundColor = UIColor.blackColor()
            box7.backgroundColor = UIColor.blackColor()
        default:
            box1.backgroundColor = UIColor.clearColor()
            box2.backgroundColor = UIColor.clearColor()
            box3.backgroundColor = UIColor.clearColor()
            box4.backgroundColor = UIColor.clearColor()
            box5.backgroundColor = UIColor.clearColor()
            box6.backgroundColor = UIColor.clearColor()
            box7.backgroundColor = UIColor.clearColor()
        }
    }
}
