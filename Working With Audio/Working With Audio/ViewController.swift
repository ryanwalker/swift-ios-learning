//
//  ViewController.swift
//  Working With Audio
//
//  Created by Ryan Walker on 11/24/15.
//  Copyright © 2015 Ryan Walker. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer = AVAudioPlayer()
    var audioPath: String?
    
    @IBAction func stop(sender: AnyObject) {
        initializePlayer()
    }
    
    
    
    @IBOutlet var slider: UISlider!
    
    @IBAction func volume(sender: AnyObject) {
        player.volume = slider.value
    }
    @IBAction func play(sender: AnyObject) {
        player.play()
    }
    
    @IBAction func pause(sender: AnyObject) {
        player.pause()
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        audioPath = NSBundle.mainBundle().pathForResource("mp3", ofType: "mp3")!
        
        initializePlayer()
        
    }

    
    func initializePlayer() {
        do {
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath!))
        } catch {
            //Do not eat the thing
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

