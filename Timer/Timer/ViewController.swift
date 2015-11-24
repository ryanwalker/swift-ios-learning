//
//  ViewController.swift
//  Timer
//
//  Created by Ryan Walker on 8/29/15.
//  Copyright (c) 2015 Ryan Walker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var theTime: UILabel!

    var timer: NSTimer = NSTimer()
    var seconds = 0
    
    func updateTime() {
        seconds++
        theTime.text = "\(seconds)"

    }
    
    @IBOutlet weak var startButton: UIBarButtonItem!
    
    @IBAction func start(sender: AnyObject) {
        timer.invalidate()
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
    }
    
    @IBAction func stop(sender: AnyObject) {
        startButton.enabled = true
        timer.invalidate()
    }
    
    @IBAction func reset(sender: AnyObject) {
        startButton.enabled = true
        timer.invalidate()
        seconds = 0
        theTime.text = "\(seconds)"
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

