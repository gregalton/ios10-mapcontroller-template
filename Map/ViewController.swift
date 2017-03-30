//
//  ViewController.swift
//  Map
//
//  Created by Greg Alton on 3/29/17.
//  Copyright © 2017 Greg Alton. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    var collectionView: UICollectionView!
    

    
    let mapView: MKMapView = {
        let initialLocation = CLLocation(latitude: 34, longitude: -79)
        let regionRadius: CLLocationDistance = 1000
        let map = MKMapView()
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(initialLocation.coordinate, regionRadius * 2, regionRadius * 2)
        map.setRegion(coordinateRegion, animated: true)
        return map
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Map"
        
        // Do any additional setup after loading the view, typically from a nib.
        view.addSubview(mapView)
        mapView.frame = view.bounds
    }

    func centerMapOnLocation(location: CLLocation) {
        
    }


}

