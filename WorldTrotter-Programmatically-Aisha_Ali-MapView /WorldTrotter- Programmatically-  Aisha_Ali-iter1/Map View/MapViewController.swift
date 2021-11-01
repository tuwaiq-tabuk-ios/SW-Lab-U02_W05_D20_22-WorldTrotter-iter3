//
//  MapViewController.swift
//  WorldTrotter- Programmatically-  Aisha_Ali-iter1
//
//  Created by Aisha Ali on 10/26/21.
//

import UIKit
import MapKit
class MapViewController: UIViewController {
  
  var mapView:MKMapView!
  
  
  override func viewDidLoad() {
    print("MaoViewController loaded its view.")
  }
  
  
  
  override func loadView() {
    
    mapView = MKMapView()
    view = mapView
    
    let segmentedControl = UISegmentedControl(items: ["Standard","Hybrid","Satallite"])
    segmentedControl.backgroundColor = UIColor.systemBackground
    segmentedControl.selectedSegmentIndex = 0
    segmentedControl.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(segmentedControl)

    // Constrains
    
    let margins = view.layoutMarginsGuide
    let topConstraint = segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor , constant: 8)
    let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
    let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
    
    //
    topConstraint.isActive = true
    leadingConstraint.isActive = true
    trailingConstraint.isActive = true
    
    
    segmentedControl.addTarget(self, action: #selector(mapTypeChanged(_:)), for: .valueChanged)
    
    
  }
  
  @objc func mapTypeChanged(_ segControl: UISegmentedControl){
    switch segControl.selectedSegmentIndex{
    case 0:
      mapView.mapType = .standard
    case 1:
      mapView.mapType = .hybrid
    case 2:
      mapView.mapType = .satellite
    default:
      break
    }
  }
  
}
