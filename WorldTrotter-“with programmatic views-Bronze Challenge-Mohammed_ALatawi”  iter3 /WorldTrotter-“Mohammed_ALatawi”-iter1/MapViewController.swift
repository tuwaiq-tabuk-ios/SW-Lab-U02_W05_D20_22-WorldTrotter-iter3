//
//  MapViewController.swift
//  WorldTrotter-“Mohammed_ALatawi”-iter1
//
//  Created by محمد العطوي on 21/03/1443 AH.
//

import UIKit
import MapKit
class MapViewController: UIViewController {
  
  var mapView: MKMapView!
  var switchMap: UISwitch!
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    
    // Do any additional setup after loading the view.
  }
  
  override func loadView() {
    
    mapView = MKMapView()
    
    view = mapView
    
    
    let segmentedControl
      
      = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
    segmentedControl.backgroundColor = UIColor.systemBackground
    segmentedControl.selectedSegmentIndex = 0
    segmentedControl.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(segmentedControl)
    
    let topConstraint = segmentedControl.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor,constant: 8)
    let margins = view.layoutMarginsGuide
    let leadingConstraint =
      segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor)
    let trailingConstraint =
      segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor)
    
    
    topConstraint.isActive = true
    leadingConstraint.isActive = true
    trailingConstraint.isActive = true
    
    segmentedControl.addTarget(self,
                               action: #selector(mapTypeChanged(_:)),
                               for: .valueChanged)
    
   
    let pointsOfInterest = UILabel()
    pointsOfInterest.text = "pointsOfInterest"
    view.addSubview(pointsOfInterest)
    
    pointsOfInterest.translatesAutoresizingMaskIntoConstraints = false
    
    
    let topConstraintLabel =
      pointsOfInterest .topAnchor.constraint(equalTo:segmentedControl.bottomAnchor,constant: 8)
    let leadingConstraintLabel =
      pointsOfInterest.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
    let trailingConstraintLabel =
      pointsOfInterest.trailingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 130)
    
    topConstraintLabel.isActive = true
    leadingConstraintLabel.isActive = true
    trailingConstraintLabel.isActive = true
    
    switchMap = UISwitch()
    switchMap.isOn = true
    view.addSubview(switchMap)
    
    switchMap.translatesAutoresizingMaskIntoConstraints = false
    
    let topConstraintswitchMap = switchMap
      .topAnchor.constraint(equalTo:segmentedControl.bottomAnchor,constant:5)
    
    let leadingConstraintswitchMap = switchMap.leadingAnchor.constraint(equalTo: pointsOfInterest.trailingAnchor, constant: 10)
    
    let trailingConstraintswitchMap =
      switchMap.trailingAnchor.constraint(equalTo: pointsOfInterest.trailingAnchor, constant: 150)
    
    switchMap.addTarget(self, action: #selector(pointFilter), for: .valueChanged)
    
    topConstraintswitchMap.isActive = true
    leadingConstraintswitchMap.isActive = true
    trailingConstraintswitchMap.isActive = true
    
  }
  @objc func mapTypeChanged(_ segControl: UISegmentedControl) {
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
  
  @objc func pointFilter(){
    if switchMap.isOn{
      
      mapView.pointOfInterestFilter = MKPointOfInterestFilter .includingAll
      
    }else{
      mapView.pointOfInterestFilter = MKPointOfInterestFilter .excludingAll
    }
    
  }
  
}
