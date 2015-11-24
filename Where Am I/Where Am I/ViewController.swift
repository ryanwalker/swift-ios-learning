//
//  ViewController.swift
//  Where Am I
//
//  Created by Ryan Walker on 11/3/15.
//  Copyright © 2015 Ryan Walker. All rights reserved.
//
/*
    Went to Build Phase, Link Binary Libraries, added CoreLocation.framework
    Added to info.plist
        NSLocationWhenInUseUsageDescription - message to user when asking for access to gps
        NSLocationAlwaysUsageDescription - message to user when asking for access to gps
    import CoreLocation
    Added CLLocationManagerDelegate
    Setup the locationManager in viewDidLoad()
    used the locationManager(manager: CLLocationManager, didUpdateLocations ) from the delegate (I think?)
        I don't quite understand the syntax of the function though.
    For a text label, set lines to 0 to have as many lines as needed


*/
import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    var manager: CLLocationManager!
    
    @IBOutlet var nearestAddress: UILabel!
    
    @IBOutlet var latitude: UILabel!
    @IBOutlet var longitude: UILabel!
    @IBOutlet var speed: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        manager = CLLocationManager()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        print(locations)
        let userLocation: CLLocation = locations[0]
        
        
        latitude.text = String(userLocation.coordinate.latitude)
        longitude.text = String(userLocation.coordinate.longitude)
        userLocation.course
        userLocation.altitude
        speed.text = "\(userLocation.speed)"
        
        
        CLGeocoder().reverseGeocodeLocation(userLocation) { (placemarks, error) -> Void in
            if error != nil {
                print(error)
            } else {
                if placemarks != nil {
                    let p: CLPlacemark = placemarks![0]
                    self.nearestAddress.text = "\(p.thoroughfare!) \n \(p.subLocality) \n \(p.locality!) \n \(p.country!)"
                }
                
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

