//
//  MapViewController.swift
//  WorldTrotter-MarzouqAlmukhlif-iter2
//
//  Created by Marzouq Almukhlif on 21/03/1443 AH.
//

import UIKit
import MapKit

class MapViewController: UITabBarController {

  var mapView: MKMapView!
  
  override func loadView() {
    
    mapView = MKMapView()
    view = mapView
    
    let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.systemBackground
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
    
    
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
    
    segmentedControl.addTarget(self, action: #selector(mapTypeChanged),for: .valueChanged)
    
    
    
    
  }
  
    override func viewDidLoad() {
        super.viewDidLoad()

      
        // Do any additional setup after loading the view.
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
  
}
