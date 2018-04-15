//
//  DroppablePin.swift
//  pixel-city
//
//  Created by Shameiz Rangwala on 2018-04-10.
//  Copyright © 2018 CodeSchool. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class DroppablePin: NSObject,MKAnnotation{
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate:CLLocationCoordinate2D,identifier:String){
        self.coordinate=coordinate;
        self.identifier=identifier;
        super.init()
    }
}
