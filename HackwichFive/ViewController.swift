//
//  ViewController.swift
//  HackwichFive
//
//  Created by Marion Ano on 2/18/21.
//  Copyright © 2021 Marion Ano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  //declare and assign a global variable
    var currentIndex = 0
    //declare and assign a global variable that is an array that holds a collection of strings that are names of our favorite food
    var favoriteFoodsArray = ["Burgers", "Sushi", "Laulau", "Poke Bowls", "Ice cream"]
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    //IBOutlet for button to access it's properties -- change its attributes
    @IBOutlet weak var buttonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        topLabel.text = "My Favorite Foods"
        //set bottomLabel to display the item at "currentIndex" upon lauch of app
        bottomLabel.text = favoriteFoodsArray[currentIndex]
        
    }
   //Part 8
    @IBAction func buttonPressed(_ sender: Any) {
        
        //Comment #1: if currentIndex is less than the "favoriteFoodsArray" array count
        if self.currentIndex < self.favoriteFoodsArray.count
        {
            // Comment #2: set bottomLabeltext to item in the array at currentIndex
            bottomLabel.text = favoriteFoodsArray[currentIndex]
            //Comment #3:set the title of the button to "Next"
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
            //Comment #4:increment currentIndex by 1
            currentIndex+=1
        }
        else
        {
            //Comment #5:print the string: "Button has been disabled"
            print("Button has been disabled")
            //Comment #6:disable the button
            (buttonLabel!).isEnabled=false
        }
        
    }
}

