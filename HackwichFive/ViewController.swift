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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        topLabel.text = "My Favorite Foods"
        //set bottomLabel to display the item at "currentIndex" upon lauch of app
        bottomLabel.text = favoriteFoodsArray[currentIndex]
        
    }


}

