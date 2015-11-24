//
//  SecondViewController.swift
//  To Do
//
//  Created by Ryan Walker on 9/5/15.
//  Copyright (c) 2015 Ryan Walker. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var text: UITextField!
    
    @IBAction func addItem(sender: AnyObject) {
        //Check for errors though
        toDoListData.append(text.text)
        text.text = ""
        NSUserDefaults.standardUserDefaults().setObject(toDoListData, forKey: "toDoListData")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.text.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //tapping outside of the keyboard
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    //Hitting return closes keyboard
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    

}

