//
//  ViewController.swift
//  animations
//
//  Created by Ryan Walker on 9/19/15.
//  Copyright © 2015 Ryan Walker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 1
    
    var timer = NSTimer()
    
    var animated = true
    
    @IBOutlet var alienImage: UIImageView!
    
    @IBOutlet var startStop: UIBarButtonItem!

    @IBAction func reset(sender: AnyObject) {
        if animated {
            timer.invalidate()
            startStop.title = "Start"
            animated = false
        } else {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
            startStop.title = "Stop"
            animated = true
        }
//        alienImage.image = UIImage(named: "frame1.jpg")
//        counter = 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
        
    }
    
    func doAnimation() {
        if counter == 5 {
            counter = 0
        }
        counter++
        alienImage.image = UIImage(named: "frame\(counter).jpg")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
//        alienImage.center = CGPointMake(alienImage.center.x - 400, alienImage.center.y)
//        alienImage.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool) {
//        UIView.animateWithDuration(1, animations: { () -> Void in
//            self.alienImage.center = CGPointMake(self.alienImage.center.x + 400, self.alienImage.center.y)
//            self.alienImage.alpha = 1
//        })
    }


}

