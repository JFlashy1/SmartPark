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
    
    let selectedCoordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)

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
        point.title = "Parking Spot currently unavailable"
       
       
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
        pointFour.title = "Parking Garage is Available"
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
        let pointSeven = MKPointAnnotation() //35.991073, -78.902370
        pointSeven.coordinate = CLLocationCoordinate2D(latitude: 35.991073, longitude: -78.902370)
        pointSeven.title = "Parking Lot is full"
        mapView.addAnnotation(pointSeven)
        
        //Point #8 //35.990216, -78.905209
        let pointEight = MKPointAnnotation()
        pointEight.coordinate = CLLocationCoordinate2D(latitude: 35.990216, longitude: -78.905209)
        pointEight.title = "Parking Spot is Available"
        mapView.addAnnotation(pointEight)
        //Point #9 //35.990452, -78.905841
        
        let pointNine = MKPointAnnotation()
        pointNine.coordinate = CLLocationCoordinate2D(latitude: 35.990452, longitude: -78.905841)
        pointNine.title = "Parking Spot currently unavailable"
        mapView.addAnnotation(pointNine)
        
        //Point #10 //35.996297, -78.902890
        let pointTen = MKPointAnnotation()
        pointTen.coordinate = CLLocationCoordinate2D(latitude: 35.996297, longitude:  -78.902890)
        pointTen.title = "Parking Spot is Available"
        mapView.addAnnotation(pointTen)
        
        //Point #11 35.996412, -78.903105
        let pointEleven = MKPointAnnotation()
        pointEleven.coordinate = CLLocationCoordinate2D(latitude: 35.996412, longitude: -78.903105)
        pointEleven.title = "Parking Spot is Available"
        mapView.addAnnotation(pointEleven)
        
        //point #12 35.996787, -78.903101 //parking lot full
        let pointTwelve = MKPointAnnotation()
        pointTwelve.coordinate = CLLocationCoordinate2D(latitude: 35.996787, longitude: -78.903101)
        pointTwelve.title = "Parking lot full"
        mapView.addAnnotation(pointTwelve)
        
        //point13 35.996256, -78.902837
        let pointThirteen = MKPointAnnotation()
        pointThirteen.coordinate = CLLocationCoordinate2D(latitude: 35.996256, longitude: -78.902837)
        pointThirteen.title = "Parking Spot is Available"
        mapView.addAnnotation(pointThirteen)
        
        //point14 35.996693, -78.903624
        let pointFourteen = MKPointAnnotation()
        pointFourteen.coordinate = CLLocationCoordinate2D(latitude: 35.996693, longitude: -78.903624)
        pointFourteen.title = "Parking Spot currently unavailable"
        mapView.addAnnotation(pointFourteen)
        
        //point 15 35.996033, -78.903649
        let pointFifteen = MKPointAnnotation()
        pointFifteen.coordinate = CLLocationCoordinate2D(latitude: 35.996033, longitude: -78.903649)
        pointFifteen.title = "Parking Lot is Available"
        mapView.addAnnotation(pointFifteen)
        
        //point 16 35.996033, -78.903649
        let pointSixteen = MKPointAnnotation()
        pointSixteen.coordinate = CLLocationCoordinate2D(latitude: 35.996033, longitude: -78.903649)
        pointSixteen.title = "Parking Spot is Available"
        mapView.addAnnotation(pointSixteen)
        
        //point 17 35.995927, -78.900926
        let pointSeventeen = MKPointAnnotation()
        pointSeventeen.coordinate = CLLocationCoordinate2D(latitude: 35.995927, longitude: -78.900926)
        pointSeventeen.title = "Parking Spot is Available"
        mapView.addAnnotation(pointSeventeen)
        
        //point 18  35.996110, -78.901214
        let pointEighteen = MKPointAnnotation()
        pointEighteen.coordinate = CLLocationCoordinate2D(latitude: 35.996110, longitude: -78.901214)
        pointEighteen.title = "Parking Spot is Available"
        mapView.addAnnotation(pointEighteen)
        
        //point 19 35.998478, -78.901585
        let pointNineteen = MKPointAnnotation()
        pointNineteen.coordinate = CLLocationCoordinate2D(latitude: 35.998478, longitude: -78.901585)
        pointTen.title = "Parking Spot currently unavailable"
        mapView.addAnnotation(pointNineteen)
        
        //point 20 35.994179, -78.903170
        let pointTwenty = MKPointAnnotation()
        pointTwenty.coordinate = CLLocationCoordinate2D(latitude: 35.994179, longitude: -78.903170)
        pointTwenty.title = "Parking Spot is Available"
        mapView.addAnnotation(pointTwenty)
        
        //point 25 35.996933, -78.900470
        let pointTwentyFive = MKPointAnnotation()
        pointTwentyFive.coordinate = CLLocationCoordinate2D(latitude: 35.996933, longitude: -78.900470)
        pointTwentyFive.title = "Parking currently unavailable"
        mapView.addAnnotation(pointTwentyFive)
        
        //point 21 35.999587, -78.900716 parking lot
        let pointTwentyOne = MKPointAnnotation()
        pointTwentyOne.coordinate = CLLocationCoordinate2D(latitude: 35.999587, longitude: -78.900716)
        pointTwentyOne.title = "Parking Spot is Available"
        mapView.addAnnotation(pointTwentyOne)
        
        //point 22 35.990502, -78.898961
        let pointTwentyTwo = MKPointAnnotation()
        pointTwentyTwo.coordinate = CLLocationCoordinate2D(latitude: 35.990502, longitude: -78.898961)
        pointTwentyTwo.title = "Parking Spot is Available"
        mapView.addAnnotation(pointTwentyTwo)
        
        //point 23 35.990684, -78.899304
        let pointTwentyThree = MKPointAnnotation()
        pointTwentyThree.coordinate = CLLocationCoordinate2D(latitude: 35.990684, longitude: -78.899304)
        pointTwentyThree.title = "Parking Spot is Available"
        mapView.addAnnotation(pointTwentyThree)
        //point 24 35.989530, -78.900088
        let pointTwentyFour = MKPointAnnotation()
        pointTwentyFour.coordinate = CLLocationCoordinate2D(latitude: 35.989530, longitude: -78.900088)
        pointTwentyFour.title = "Parking Spot is unavailable"
        mapView.addAnnotation(pointTwentyFour)
        
        //point 26 35.994341, -78.902051
        let pointTwentySix = MKPointAnnotation()
        pointTwentySix.coordinate = CLLocationCoordinate2D(latitude: 35.994341, longitude: -78.902051)
        pointTwentySix.title = "Spot Available in 15 minutes"
        mapView.addAnnotation(pointTwentySix)
        
       
        
        //point 28 yellow 35.991042, -78.907117
        let pointTwentyEight = MKPointAnnotation()
        pointTwentyEight.coordinate = CLLocationCoordinate2D(latitude: 35.991042, longitude: -78.907117)
        pointTwentyEight.title = "Spot Available in 15 minutes"
        mapView.addAnnotation(pointTwentyEight)
        
        //point 29 ,,
        let pointTwentyNine = MKPointAnnotation()
        pointTwentyNine.coordinate = CLLocationCoordinate2D(latitude: 35.989453, longitude: -78.906491)
        pointTwentyNine.title = "Spot Available in 15 minutes"
        mapView.addAnnotation(pointTwentyNine)
        
        //point 30 
        let pointThirty = MKPointAnnotation()
        pointThirty.coordinate = CLLocationCoordinate2D(latitude: 35.994341, longitude: -78.902051)
        pointTwentySix.title = "Spot Available in 15 minutes"
        mapView.addAnnotation(pointThirty)
        
        
        
        
        
        
        
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
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        
        
        if annotation.title! == "Parking Lot is Available" || annotation.title! == "Parking Garage is Available" {
            button.setImage(UIImage(named: "parking lot symbol")!, for: .normal)
        } else {
            button.setImage(UIImage(named: "smartsmall.png")!, for: .normal)
        }
        
        
        
        let buttonTwo = UIButton(type: UIButtonType.detailDisclosure)
        buttonTwo.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        //button.setImage(UIImage(named: "parking lot symbol.png")!, for: .normal) //new code
        
        annotationView.leftCalloutAccessoryView = button
        annotationView.rightCalloutAccessoryView = buttonTwo //newcode
        
       
        annotationView.canShowCallout = true //new code
        
      
        
        if annotation.title! == "Parking Spot is Available" {
            
            annotationView.pinTintColor = UIColor.green
            
        }
        else if annotation is MKUserLocation {
            return nil
        }
        else if annotation.title! == "Spot Available in 15 minutes"{
            
            annotationView.pinTintColor = UIColor.yellow
        }
        else if annotation.title! == "Parking Lot is Available" || annotation.title! == "Parking Garage is Available" {
            annotationView.pinTintColor = UIColor.green
        }
        else {
            
            annotationView.pinTintColor = UIColor.red
        }
        
        return annotationView
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        
        
        guard let coordinate = view.annotation?.coordinate else {return}
        
        
        if let title = view.annotation?.title, title == "Parking Garage is Available" {
            
            performSegue(withIdentifier: "toLotView", sender: self)
            
            // segue
            
        } else {
            let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate, addressDictionary:nil))
            mapItem.name = "Parking Spot"
            mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving])
        }
        
        
        
        
        
        
//        performSegue(withIdentifier: "displayParkingSegue", sender: self)
        
    }
}
