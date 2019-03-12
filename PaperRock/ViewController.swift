//
//  ViewController.swift
//  PaperRock
//
//  Created by Ahmed Ghareeb on 2019-03-12.
//  Copyright © 2019 Ahmed Ghareeb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var userchoice = 0
    var paperCount = 0
    var rockCount = 0
    var sessorCount = 0
    
    @IBOutlet weak var computerImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var userChoiceLabel: UILabel!
    
    
    @IBOutlet weak var counterLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func generate()->Int{
        let number = Int.random(in: 0 ..< 3)
        return number
    }

    
    @IBAction func playGame(_ sender: Any) {
        
        let computerChoice = generate()
        switch computerChoice{
        case 0:
            computerImage.image = UIImage(named: "paper")
            break
        case 1:
            computerImage.image = UIImage(named: "rock")
            break
        case 2:
            computerImage.image = UIImage(named: "sessor")
            break
        default:
            break
        }
        
        if (userchoice == computerChoice){
        resultLabel.text = "draw"
        }else if (userchoice==0 && computerChoice==1){
        resultLabel.text = "you win"
        }
        else if (userchoice==0 && computerChoice==2){
            resultLabel.text = "you loose"
        }
        else if (userchoice==1 && computerChoice==0){
            resultLabel.text = "you loose"
        }
        else if (userchoice==1 && computerChoice==2){
            resultLabel.text = "you win"
        }
        else if (userchoice==2 && computerChoice==0){
            resultLabel.text = "you win"
        }
        else if (userchoice==2 && computerChoice==1){
            resultLabel.text = "you loose"
        }
        
        counterLabel.text = "paper = \(paperCount)  rock = \(rockCount)  sessors = \(sessorCount)"
        
    }
    
    
    @IBAction func paperClicked(_ sender: Any) {
        userchoice = 0
        userChoiceLabel.text = "you choose paper"
        resultLabel.text = "click play"
        paperCount = paperCount + 1
    }
    
    @IBAction func rockClicked(_ sender: Any) {
        
        userchoice = 1
        userChoiceLabel.text = "you choose rock"
        resultLabel.text = "click play"
        rockCount = rockCount + 1
    }
    
    @IBAction func sessorClicked(_ sender: Any) {
        userchoice = 2
        userChoiceLabel.text = "you choose sessors"
        resultLabel.text = "click play"
        sessorCount = sessorCount + 1
    }
    
}

