//
//  ViewController.swift
//  Control Keyboard
//
//  Created by Ryan Walker on 9/3/15.
//  Copyright (c) 2015 Ryan Walker. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var text: UITextField!
    @IBOutlet var label: UILabel!
    @IBAction func button(sender: AnyObject) {
        label.text = text.text
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

    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        label.text = text.text
        return true
    }

}

