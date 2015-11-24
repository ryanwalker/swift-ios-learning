//
//  ViewController.swift
//  Permanent Storage
//
//  Created by Ryan Walker on 9/3/15.
//  Copyright (c) 2015 Ryan Walker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        NSUserDefaults.standardUserDe faults().setObject("Ryan", forKey: "name")
        var data = NSUserDefaults.standardUserDefaults().objectForKey("name") as! String
        println(data)
        
        
        var numbers = [1,2,3]
        NSUserDefaults.standardUserDefaults().setObject(numbers, forKey: "array")
        
        var gotIt = NSUserDefaults.standardUserDefaults().objectForKey("array") as! NSArray
        
        println(gotIt[2])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

