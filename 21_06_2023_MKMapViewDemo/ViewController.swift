//
//  ViewController.swift
//  21_06_2023_MKMapViewDemo
//
//  Created by Vishal Jagtap on 23/08/23.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    var bitCodePin : MKPlacemark?
    var pointAnnotation : MKPointAnnotation?
    var bitCodeCoordinate : CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 18.5092, longitude: 73.88326)
    var shaniwarWadaCoordinate : CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 18.5195, longitude: 73.8554)
    
    var coordinateRegion : MKCoordinateRegion?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.mapType = .satellite
//        setPinUsingPlaceMark(location: bitCodeCoordinate)
        setPinUsingMapPinMKAnnotation()
//        setPointAnnotation(location: shaniwarWadaCoordinate)
    }
    
    func setPinUsingPlaceMark(location : CLLocationCoordinate2D){
        
       bitCodePin = MKPlacemark(coordinate: location)
        
       coordinateRegion = MKCoordinateRegion(
        center: bitCodePin!.coordinate,
        latitudinalMeters: 800,
        longitudinalMeters: 800)
        
        mapView.setRegion(coordinateRegion!, animated: true)
        mapView.addAnnotation(bitCodePin!)
    }
    
    func setPointAnnotation(location : CLLocationCoordinate2D){
        pointAnnotation = MKPointAnnotation()
        pointAnnotation?.coordinate = location
        pointAnnotation?.title = "Shaniwar Wada"
        
        coordinateRegion = MKCoordinateRegion(
            center: pointAnnotation!.coordinate,
            latitudinalMeters: 800,
            longitudinalMeters: 800)
        mapView.setRegion(coordinateRegion!, animated: true)
        mapView.addAnnotation(pointAnnotation!)
    }
    
    func setPinUsingMapPinMKAnnotation(){
      let sinhgadFortCoordinate = CLLocationCoordinate2D(latitude: 18.3667, longitude: 73.7553)
      let newPin = MapPin(
        title: "Sinhgad Fort",
        locationName: "Sinhgad",
        coordinate: sinhgadFortCoordinate)
        
      let coordinateRegion = MKCoordinateRegion(
        center: newPin.coordinate,
        latitudinalMeters: 800,
        longitudinalMeters: 800)
        
        mapView.setRegion(coordinateRegion, animated: true)
        mapView.addAnnotation(newPin)
    }
}
