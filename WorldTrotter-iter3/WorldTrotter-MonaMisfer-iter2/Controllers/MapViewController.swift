//
//  MapViewController.swift
//  WorldTrotter-MonaMisfer-iter2
//
//  Created by mac M on 26/10/2021.
//

import  UIKit
import MapKit

class MapViewController: UIViewController {
  
  var mapView: MKMapView!
  var poiLabel: UILabel!
  var poiSwitch: UISwitch!
  
  
  override func loadView() {
    // Create a map view
    mapView = MKMapView()
    // Set it as *the* view of this view controller
    view = mapView
    
    let segmentedControl
      = UISegmentedControl(items: [
                            "Standard",
                            "Hybrid",
                            "Satellite"])
    segmentedControl.backgroundColor = UIColor.systemBackground
    segmentedControl.selectedSegmentIndex = 0
    segmentedControl.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(segmentedControl)
  
    segmentedControl.addTarget(self, action: #selector(mapTypeChanged(_:)),
                               for: .valueChanged)
    
    let topConstraint =
      segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                                            constant: 8)
    
    let margins = view.layoutMarginsGuide
    let leadingConstraint =
      segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
    let trailingConstraint =
      segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
    
    
    
    let label = UILabel()
    label.text = "Points of Interest"
    label.translatesAutoresizingMaskIntoConstraints = false
    
    let toggle = UISwitch()
    toggle.addTarget(self, action: #selector(toggleChanged(_:)),
                     for: .valueChanged)
    toggle.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(segmentedControl)
    view.addSubview(label)
    view.addSubview(toggle)
    
    //UILabel Constraints
    let LTopConstraint = label.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 15)
    let LLeadingConstraint = label.leadingAnchor.constraint(equalTo: segmentedControl.leadingAnchor)
    
    
    //UISwitch constraints
    let SWTopConstraint = toggle.centerYAnchor.constraint(equalTo: label.centerYAnchor)
    let SWLeadingConstraint = toggle.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 10)
   
    topConstraint.isActive = true
    leadingConstraint.isActive = true
    trailingConstraint.isActive = true
    
    LTopConstraint.isActive = true
    LLeadingConstraint.isActive = true
    SWTopConstraint.isActive = true
    SWLeadingConstraint.isActive = true
    
    
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("MapViewController loaded its view.")
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
      break }}
  
  
  @objc func toggleChanged(_ toggleControl: UISwitch) {
    if toggleControl.isOn {
      mapView.pointOfInterestFilter = .includingAll
    }
    else {
      mapView.pointOfInterestFilter = .excludingAll
    }
  }
}

