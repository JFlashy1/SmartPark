//
//  LocationViewController.swift
//  SmartPark
//
//  Created by Anitra Jackson on 5/17/17.
//  Copyright © 2017 Anitra Jackson. All rights reserved.
//

import UIKit
import CoreLocation

class LocationViewController: UIViewController {

    let manager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        manager.delegate = self
        manager.requestAlwaysAuthorization()
        
        manager.requestLocation()
    }
}

extension LocationViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        
    }
    
}
