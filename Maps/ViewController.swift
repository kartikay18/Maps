//
//  ViewController.swift
//  Maps
//
//  Created by KARTIKAY GOYLE on 2016-08-13.
//  Copyright © 2016 Training. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController,MKMapViewDelegate {

    @IBOutlet weak var Map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let location = CLLocationCoordinate2DMake(43.642029,-79.411956)
        
        let span = MKCoordinateSpanMake(0.02, 0.02)
        
        let region = MKCoordinateRegionMake(location, span)
        
        Map.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()

        
        
        annotation.coordinate = location
        annotation.title = "Pizza Hut"
        annotation.subtitle = "Eat"
        
        
        Map.addAnnotation(annotation)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

