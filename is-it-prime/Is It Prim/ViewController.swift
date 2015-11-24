//
//  ViewController.swift
//  Is It Prim
//
//  Created by Ryan Walker on 8/26/15.
//  Copyright (c) 2015 Ryan Walker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number: UITextField!
    
    @IBOutlet weak var answer: UILabel!
    
    
    @IBAction func submitNumber(sender: AnyObject) {
        //Check if the number is prime
        if number.text != nil && isPrime(number.text.toInt()!) {
            answer.text = "YES!"
        } else {
            answer.text = "NO!"
        }
        number.text = ""
        
        var optional = 1
        
    }
    
    
    func isPrime(number: Int) -> Bool {
        var returnVal = (number == 1 || number == 2) ? false : true
        for var i = 2; i < number; i++ {
            if number % i == 0 {
                returnVal = false
                break
            }
        }
        return returnVal
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

