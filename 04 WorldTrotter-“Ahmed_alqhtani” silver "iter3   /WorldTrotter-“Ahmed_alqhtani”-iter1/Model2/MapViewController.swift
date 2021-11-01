//
//  MapViewController.swift
//  WorldTrotter-“Ahmed_alqhtani”-iter1
//
//  Created by Ahmed awadh alqhtani on 21/03/1443 AH.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
  var mapView: MKMapView!
  var switchMap: UISwitch!
  
  override func loadView() {
    
    // Create a map view
    mapView = MKMapView()
    // Set it as *the* view of this view controller
    view = mapView
    
    let segmentedControl
      = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
    segmentedControl.backgroundColor = UIColor.systemBackground
    segmentedControl.selectedSegmentIndex = 0
    segmentedControl.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(segmentedControl)
    
    
    segmentedControl.addTarget(self,
                               action: #selector(mapTypeChanged(_:)), for: .valueChanged)
    
    
    let topConstraint =
      segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                                            constant: 8)
    let margins = view.layoutMarginsGuide
    let leadingConstraint =
      segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
    let trailingConstraint =
      segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
    
    
    
    topConstraint.isActive = true
    leadingConstraint.isActive = true
    trailingConstraint.isActive = true
    
    
    
    // points
    
    let points = UILabel ()
    points.text = "Points of Interest"
    view.addSubview(points)
    
    points.translatesAutoresizingMaskIntoConstraints = false
    
    let topConstraint1 = points.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 10)
    
    let leadingConstraint1 = points.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
    
    
    let trailingConstraint1 = points.trailingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 130)
    
    
    topConstraint1.isActive = true
    leadingConstraint1.isActive = true
    trailingConstraint1.isActive = true
    
    
    //switchMap
    
    switchMap = UISwitch()
    switchMap.isOn = true
    view.addSubview(switchMap)
    
    
    switchMap.translatesAutoresizingMaskIntoConstraints = false
    
    let topConstraintswitchMap = switchMap.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 5)
    
    
    let leadingConstraintswitchMap = switchMap.leadingAnchor.constraint(equalTo: points.trailingAnchor, constant: 10)
    
    
    let trailingConstraintswitchMap = switchMap.trailingAnchor.constraint(equalTo: points.trailingAnchor, constant: 150)
    
    topConstraintswitchMap.isActive = true
    leadingConstraintswitchMap.isActive = true
    trailingConstraintswitchMap.isActive = true
    
    switchMap.addTarget(self, action: #selector(pointFilter), for: .valueChanged)
    
  }
  
  @objc func pointFilter(){
    if switchMap.isOn{
      mapView.pointOfInterestFilter = .includingAll
      
    }else{
      mapView.pointOfInterestFilter = .excludingAll
    }
  }
  
  
  @objc func mapTypeChanged (_ segControl: UISegmentedControl) {
    switch segControl.selectedSegmentIndex {
    case 0:
      mapView.mapType = .standard
    case 1:
      mapView.mapType = .hybrid
    case 2:
      mapView.mapType = .satellite
    default:
      break }
    
    
  }
  
}
