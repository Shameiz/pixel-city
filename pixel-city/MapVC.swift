//
//  MapVC.swift
//  pixel-city
//
//  Created by Shameiz Rangwala on 2018-04-09.
//  Copyright © 2018 CodeSchool. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate=self;
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    @IBAction func centreMapBtnPressed(_ sender: Any) {
    }
    

}

extension MapVC: MKMapViewDelegate{
    
}

