//
//  ViewController.swift
//  HelloWorld
//
//  Created by Jolene Bernagene/Amara Gordon on 9/20/18.
//  Copyright © 2018 Jolene/Amara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showMessage(sender: UIButton){
        
    //How to display hello word message
//        let alertController = UIAlertController(title: "Welcome to Our First Mobile App", message: "Hello World", preferredStyle: UIAlertController.Style.alert)
//        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//        present(alertController, animated: true, completion: nil)
        
        
        
        
        //Get the meaning of each emoji to display
        
        //Intialize the dictionary for the emoji icons
        var emojiDict : [String: String] = ["🏃🏾‍♀️":"Track and Field", "🧘🏾‍♀️": "Yoga", "Hello World":"Hiii, thanks for stopping by! :)","🏌🏾‍♀️":"Golf", "🏊🏾‍♀️":"Swimming" ]
        
        //The sender is the button that is tapped by the user
        //Here we store the sender in the selectedButton constant
        let selectedButton = sender
        
        //Get the emoji from the title label of the selected button
        if let wordToLookup = selectedButton.titleLabel?.text{
            //Get the meaning of the emoji from the dictionary
            let meaning = emojiDict[wordToLookup]
            
            //change the line below to display the meaning of the emoji instead of Hello World
            let alertController = UIAlertController(title: "Meaning:", message: meaning, preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }


}

