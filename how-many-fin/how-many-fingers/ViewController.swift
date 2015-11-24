//
//  ViewController.swift
//  how-many-fingers
//
//  Created by Ryan Walker on 8/18/15.
//  Copyright (c) 2015 Ryan Walker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let highestNumber:UInt32 = 5;
    
    @IBOutlet weak var theAnswer: UILabel!
    
    @IBOutlet weak var theGess: UITextField!
    
    @IBAction func guess(sender: UIButton) {
        var randomNumber = arc4random_uniform(5)
        var guess = theGess.text.toInt()
        
        if guess != nil {
            if guess == Int(randomNumber) {
                theAnswer.text = "You got it!"
            } else {
                theAnswer.text = "Actually it was \(randomNumber), try again"
            }
        } else {
                theAnswer.text = "Please enter a number."
        }
        
        //theGess.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

