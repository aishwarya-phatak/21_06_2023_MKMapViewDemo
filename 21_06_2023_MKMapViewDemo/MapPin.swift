//
//  MapPin.swift
//  21_06_2023_MKMapViewDemo
//
//  Created by Vishal Jagtap on 23/08/23.
//

import Foundation
import MapKit

class MapPin : NSObject,MKAnnotation{
    var title : String?
    var locationName : String
    var coordinate : CLLocationCoordinate2D
    
    init(title: String,
         locationName: String,
         coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.locationName = locationName
        self.coordinate = coordinate
    }
}
