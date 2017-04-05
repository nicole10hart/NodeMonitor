//
//  MapViewController.swift
//  NodeMonitor
//
//  Created by Hart, Nicole on 4/5/17.
//  Copyright © 2017 BigNerdRanch. All rights reserved.
//
import UIKit
import MapKit

class MapViewController: UIViewController {
    var mapView: MKMapView!
    
    func setRegion(latitude: Double, longitude: Double) {
        let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
        let location = CLLocationCoordinate2DMake(latitude, longitude)
        let region = MKCoordinateRegionMake(location, span)
        self.mapView.setRegion(region, animated: true)
    }
    
    override func loadView() {
        mapView = MKMapView()
        
        view = mapView
        
        mapView.mapType = .hybrid
        setRegion(latitude: 38.9150354, longitude: -77.2205595)
        
        let segmentedControl = UISegmentedControl(items: ["Towers", "Wilmington", "San Francisco", "Clarendon"])
        segmentedControl.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.addTarget(self, action: #selector(MapViewController.mapTypeChanged(_:)), for: .valueChanged)
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
        
        let margins = view.layoutMarginsGuide
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 8)
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        
        topConstraint.isActive = true
        leadingConstraint.isActive = true
        trailingConstraint.isActive = true
    }
    
    func mapTypeChanged(_ segControl: UISegmentedControl) {
        switch segControl.selectedSegmentIndex {
        case 0:
            setRegion(latitude: 38.9150354, longitude: -77.2205595)
        case 1:
            setRegion(latitude: 39.7377665, longitude: -75.5544625)
        case 2:
            setRegion(latitude: 37.7850675, longitude: -122.3998681)
        case 3:
            setRegion(latitude: 38.886747, longitude: -77.0946414)
        default:
            break
        }
    }

}
