//
//  ViewController.swift
//  HackwichEleven
//
//  Created by Gina Yanagihara on 4/6/22.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)
    
    let regionRadius: CLLocationDistance = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        centerMapOnLocation(location: initialLocation)
        
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
        
        let restaurantTwo = RestaurantTwo(title: "My Cafe", type: "Breakfast & Lunch", coordinate: CLLocationCoordinate2D(latitude: 21.33809, longitude: -158.07793))
        mapView.addAnnotation(restaurantTwo)
        
        func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegion(center: location.coordinate,latitudinalMeters: regionRadius,longitudinalMeters: regionRadius)
            mapView.setRegion(coordinateRegion, animated: true)
        }
        
    }


}

