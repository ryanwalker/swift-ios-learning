//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by Ryan Walker on 9/5/15.
//  Copyright (c) 2015 Ryan Walker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("some stuff")
        
        let url = NSURL(string: "http://stackoverflow.com/")
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {
            (data, response, error) in
            if error == nil {
                var urlContent = NSString(data: data, encoding: NSUTF8StringEncoding)
                println(urlContent)
//                dispatch_async(dispatch_get_main_queue()) not sure how to do this in swift 2.0
                self.webView.loadHTMLString(urlContent! as String, baseURL: nil)
            } else {
                println("problem")
            }
            
        }
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

