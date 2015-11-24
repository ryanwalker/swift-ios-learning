//
//  ViewController.swift
//  Map Demo
//
//  Created by Ryan Walker on 10/12/15.
//  Copyright © 2015 Ryan Walker. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet var map: MKMapView!
    
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        let latitude:CLLocationDegrees = 33.8

        let longitude:CLLocationDegrees = -117.9190

        let latDelta:CLLocationDegrees = 0.01
        
        let longDelta:CLLocationDegrees = 0.01
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
    
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        map.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Disneyland"
        annotation.subtitle = "Disneyland anyone?"
        
        map.addAnnotation(annotation)
        
        let uilpgr = UILongPressGestureRecognizer(target: self, action: "action:") //Colon so that gesture recognizer is sent
        uilpgr.minimumPressDuration = 2
        
        map.addGestureRecognizer(uilpgr)
    }

    func action(gestureRecognizer: UIGestureRecognizer) {
        print("Gesture recognized")
        let touchPoint = gestureRecognizer.locationInView(self.map)
        
        let newCoordinate: CLLocationCoordinate2D = map.convertPoint(touchPoint, toCoordinateFromView: self.map)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = newCoordinate
        annotation.title = "Some other place"
        
        annotation.subtitle = "Disneyland anyone?"
        
        map.addAnnotation(annotation)

        
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        //Called when a new location is registered by the phone
        print(locations)
        let userLocation: CLLocation = locations[0]
        let latitude = userLocation.coordinate.latitude
        let longitude = userLocation.coordinate.longitude
        
        let latDelta:CLLocationDegrees = 0.01
        
        let longDelta:CLLocationDegrees = 0.01
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        map.setRegion(region, animated: true)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

