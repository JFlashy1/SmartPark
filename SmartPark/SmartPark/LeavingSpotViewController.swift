//
//  LeavingSpotViewController.swift
//  SmartPark
//
//  Created by Anitra Jackson on 5/19/17.
//  Copyright © 2017 Anitra Jackson. All rights reserved.
//

import UIKit
import MapKit
class LeavingSpotViewController: UIViewController {
    //MARK: Properties

    let manager = CLLocationManager()
    @IBOutlet weak var LeavingSpotMAp: MKMapView!
    
    @IBOutlet weak var TimerLabel: UILabel!
    var seconds = 900 //This variable will hold a starting value of seconds. It could be any amount above 0.
    var timer = Timer()
    var isTimerRunning = false //This will be used to make sure only one timer is created at a time.
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(LeavingSpotViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        
        runTimer()
    }
   
    func updateTimer() {
        seconds -= 1     //This will decrement(count down)the seconds.
        
        let secondsInMinute = 60
        let minutes = seconds/secondsInMinute
        let formattedSeconds = seconds % secondsInMinute
        
        
        TimerLabel.text = "\(minutes):\(formattedSeconds)" //This will update the label.
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.delegate = self
        LeavingSpotMAp.showsUserLocation = true
        manager.requestAlwaysAuthorization()
        manager.requestLocation()
        
        
        // Do any additional setup after loading the view.
    }
    
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
extension LeavingSpotViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first?.coordinate else {return}
        
        let region = MKCoordinateRegion(center: location, span:
            MKCoordinateSpan(latitudeDelta: 0.002, longitudeDelta: 0.002))
        
        LeavingSpotMAp.setRegion(region, animated: true)
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        
    }
    
}
