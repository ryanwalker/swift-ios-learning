//
//  ViewController.swift
//  Whats The Weather
//
//  Created by Ryan Walker on 9/7/15.
//  Copyright (c) 2015 Ryan Walker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var uriBase = "http://www.weather-forecast.com/locations/%@/forecasts/latest"
    
    @IBOutlet var city: UITextField!
    
    @IBOutlet var label: UILabel!
    
    @IBAction func searchForCity(sender: AnyObject) {
        //need to validate input though
        var safeCity = city.text.stringByReplacingOccurrencesOfString(" ", withString: "-")
        var urlString = "http://www.weather-forecast.com/locations/" + safeCity + "/forecasts/latest"
        let url = NSURL(string: urlString)
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {
            (data, response, error) in
            var weather = ""
            if error == nil {
                var urlContent = NSString(data: data, encoding: NSUTF8StringEncoding) as NSString!
                
                var urlContentArray =  urlContent.componentsSeparatedByString("<span class=\"phrase\">")
                var weatherArray = urlContentArray[1].componentsSeparatedByString("</span>")
                weather = weatherArray[0] as! String
                weather = weather.stringByReplacingOccurrencesOfString("&deg;", withString: "º")

                println(weather)
                
                
                dispatch_async(dispatch_get_main_queue()) {
                    self.label.text = weather
                }
                
                
            } else {
                println("problem")
            }
        }
        task.resume()
        
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

