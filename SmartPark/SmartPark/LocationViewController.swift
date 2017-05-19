//
//  LocationViewController.swift
//  SmartPark
//
//  Created by Anitra Jackson on 5/17/17.
//  Copyright © 2017 Anitra Jackson. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class LocationViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let manager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mapView.showsUserLocation = true

        manager.delegate = self
        mapView.delegate = self
        manager.requestAlwaysAuthorization()
        manager.requestLocation()
       
        //point #1
        // ,
        let point = MKPointAnnotation()
        point.coordinate = CLLocationCoordinate2D(latitude: 35.996947, longitude:  -78.904975)
        point.title = "Park Spot currently unavailable"
       
       
        mapView.addAnnotation(point)
        
        //Point #2
        
        let pointTwo = MKPointAnnotation()
        pointTwo.coordinate = CLLocationCoordinate2D(latitude: 35.993060, longitude: -78.904240)
        pointTwo.title = "Parking Spot is Available"
        
        mapView.addAnnotation(pointTwo)
       
        
        //Point #3
        let pointThree = MKPointAnnotation()
        pointThree.coordinate = CLLocationCoordinate2D(latitude: 35.995431, longitude: -78.905710)
        pointThree.title = "Parking Spot is Available"
    
        mapView.addAnnotation(pointThree)
        
//    //Point #4 //Parking Garage
        //35.995563, -78.904879
        let pointFour = MKPointAnnotation()
        pointFour.coordinate = CLLocationCoordinate2D(latitude: 35.995563, longitude: -78.904879)
        pointFour.title = "Parking Garage is Full"
        mapView.addAnnotation(pointFour)
        
        //Point #5 35.996982, -78.906092
        let pointFive = MKPointAnnotation()
        pointFive.coordinate = CLLocationCoordinate2D(latitude: 35.996982, longitude: -78.906092)
        pointFive.title = "Park Spot currently unavailable"
        mapView.addAnnotation(pointFive)
        
        //Point #6 35.996986, -78.906382
        let pointSix = MKPointAnnotation()
        pointSix.coordinate = CLLocationCoordinate2D(latitude: 35.996986, longitude: -78.906382)
        pointSix.title = "Parking Spot currently unavailable"
        mapView.addAnnotation(pointSix)
        
        //Point #7
        let pointSeven = MKPointAnnotation()
        pointSeven.coordinate = CLLocationCoordinate2D(latitude: 37, longitude: -122)
        pointSeven.title = "Civic center"
        mapView.addAnnotation(pointSeven)
        
        //Point #8
        let pointEight = MKPointAnnotation()
        pointEight.coordinate = CLLocationCoordinate2D(latitude: 37, longitude: -122)
        pointEight.title = "Civic center"
        mapView.addAnnotation(pointEight)
        //Point #9
        
        let pointNine = MKPointAnnotation()
        pointNine.coordinate = CLLocationCoordinate2D(latitude: 37, longitude: -122)
        pointNine.title = "Civic center"
        mapView.addAnnotation(pointNine)
        
        //Point #10
        let pointTen = MKPointAnnotation()
        pointTen.coordinate = CLLocationCoordinate2D(latitude: 37, longitude: -122)
        pointTen.title = "Civic center"
        mapView.addAnnotation(pointTen)
        
        //Point #11
        let pointEleven = MKPointAnnotation()
        pointEleven.coordinate = CLLocationCoordinate2D(latitude: 37, longitude: -122)
        pointEleven.title = "Civic center"
        mapView.addAnnotation(pointEleven)
        
        //point #12
        let pointTwelve = MKPointAnnotation()
        pointTwelve.coordinate = CLLocationCoordinate2D(latitude: 37, longitude: -122)
        pointTwelve.title = "Civic center"
        mapView.addAnnotation(pointTwelve)
        
        //point13
        let pointThirteen = MKPointAnnotation()
        pointThirteen.coordinate = CLLocationCoordinate2D(latitude: 37, longitude: -122)
        pointThirteen.title = "Civic center"
        mapView.addAnnotation(pointThirteen)
        
        //point14
        let pointFourteen = MKPointAnnotation()
        pointFourteen.coordinate = CLLocationCoordinate2D(latitude: 37, longitude: -122)
        pointFourteen.title = "Civic center"
        mapView.addAnnotation(pointFourteen)
        
        //point 15
        let pointFifteen = MKPointAnnotation()
        pointFifteen.coordinate = CLLocationCoordinate2D(latitude: 37, longitude: -122)
        pointFifteen.title = "Civic center"
        mapView.addAnnotation(pointFifteen)
        
        //point 16
        let pointSixteen = MKPointAnnotation()
        pointSixteen.coordinate = CLLocationCoordinate2D(latitude: 37, longitude: -122)
        pointSixteen.title = "Civic center"
        mapView.addAnnotation(pointSixteen)
        
        //point 17
        let pointSeventeen = MKPointAnnotation()
        pointSeventeen.coordinate = CLLocationCoordinate2D(latitude: 37, longitude: -122)
        pointSeventeen.title = "Civic center"
        mapView.addAnnotation(pointSeventeen)
        
        //point 18
        let pointEighteen = MKPointAnnotation()
        pointEighteen.coordinate = CLLocationCoordinate2D(latitude: 37, longitude: -122)
        pointEighteen.title = "Civic center"
        mapView.addAnnotation(pointEighteen)
        
        //point 19
        let pointNineteen = MKPointAnnotation()
        pointNineteen.coordinate = CLLocationCoordinate2D(latitude: 37, longitude: -122)
        pointTen.title = "Civic center"
        mapView.addAnnotation(pointNineteen)
        
        //point 20
        let pointTwenty = MKPointAnnotation()
        pointTwenty.coordinate = CLLocationCoordinate2D(latitude: 37, longitude: -122)
        pointTwenty.title = "Civic center"
        mapView.addAnnotation(pointTwenty)
        
        //point 25
        let pointTwentyFive = MKPointAnnotation()
        pointTwentyFive.coordinate = CLLocationCoordinate2D(latitude: 37, longitude: -122)
        pointTwentyFive.title = "Civic center"
        mapView.addAnnotation(pointTwentyFive)
        
        //point 21
        let pointTwentyOne = MKPointAnnotation()
        pointTwentyOne.coordinate = CLLocationCoordinate2D(latitude: 37, longitude: -122)
        pointTwentyOne.title = "Civic center"
        mapView.addAnnotation(pointTwentyOne)
        
        //point 22
        let pointTwentyTwo = MKPointAnnotation()
        pointTwentyTwo.coordinate = CLLocationCoordinate2D(latitude: 37, longitude: -122)
        pointTwentyTwo.title = "Civic center"
        mapView.addAnnotation(pointTwentyTwo)
        
        //point 23
        let pointTwentyThree = MKPointAnnotation()
        pointTwentyThree.coordinate = CLLocationCoordinate2D(latitude: 37, longitude: -122)
        pointTwentyThree.title = "Civic center"
        mapView.addAnnotation(pointTwentyThree)
        //point 24
        let pointTwentyFour = MKPointAnnotation()
        pointTwentyFour.coordinate = CLLocationCoordinate2D(latitude: 37, longitude: -122)
        pointTwentyFour.title = "Civic center"
        mapView.addAnnotation(pointTwentyFour)
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}

extension LocationViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first?.coordinate else {return}
        
        let region = MKCoordinateRegion(center: location, span:
            MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
        
        mapView.setRegion(region, animated: true)
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        
    }
    
}

extension LocationViewController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        let annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "pin")
        
        annotationView.canShowCallout = true
        
        if annotation.title! == "Parking Spot is Available" {
            
            annotationView.pinTintColor = UIColor.green
            
        } else if annotation is MKUserLocation {
            return nil
        }
        else {
            
            annotationView.pinTintColor = UIColor.red
        }
        
        return annotationView
    }
}
