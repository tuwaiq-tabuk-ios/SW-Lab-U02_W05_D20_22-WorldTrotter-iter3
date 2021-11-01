//
//  MapVc.swift
//  WorLdTrotter
//
//  Created by ahlam  on 21/03/1443 AH.
import UIKit
import MapKit

class MapVc: UIViewController {
  
  var mapView: MKMapView!
  
  override func loadView() {
    //creat a map view
    mapView = MKMapView()
    
    view = mapView
    
    let segmentedControl
    = UISegmentedControl(items: ["Standard",
                                 "Hybrid",
                                 "Satellite"
                                ])
    
    segmentedControl.backgroundColor = UIColor.systemBackground
    segmentedControl.selectedSegmentIndex = 0
    segmentedControl.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(segmentedControl)
    
    let margins = view.layoutMarginsGuide
    
    let topConstraint = segmentedControl.topAnchor
      .constraint(equalTo:view.safeAreaLayoutGuide.topAnchor, constant: 8)
    
    let leadingConstraint = segmentedControl.leadingAnchor
      .constraint(equalTo: margins.leadingAnchor)
    
    let trailingConstraint = segmentedControl.trailingAnchor
      .constraint(equalTo: margins.trailingAnchor)
    
    segmentedControl.addTarget(self,
                               action: #selector(mapTypeChanged),
                               for: .valueChanged)
    
    
    // Creat points of interest label
    let pointsOfInterestLabel = UILabel()
    pointsOfInterestLabel.text = "Points of Interest"
    
    pointsOfInterestLabel.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(pointsOfInterestLabel)
    
    
    // Create points of interest UISwitch
    let pointsOfInterestSwitch = UISwitch()
    pointsOfInterestSwitch.isOn = true
    
    pointsOfInterestSwitch.addTarget(self,
                                     action: #selector(togglePointsOfInterest),
                                     for: .valueChanged)
    
    pointsOfInterestSwitch.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(pointsOfInterestSwitch)
    
    
    let pointsOfInterestLabelTopConstraint = pointsOfInterestLabel.topAnchor
      .constraint(greaterThanOrEqualTo: segmentedControl.bottomAnchor,constant: 8)
    
    let pointsOfInterestLabelLeadingConstraint = pointsOfInterestLabel.leadingAnchor
      .constraint(equalTo: margins.leadingAnchor,constant: 8)
    
    
    let pointsOfInterestSwitchLeadingConstraint = pointsOfInterestSwitch.leadingAnchor
      .constraint(equalTo: pointsOfInterestLabel.trailingAnchor,constant: 8)
    
    let pointsOfinterestSwitchTopConstraint = pointsOfInterestSwitch.topAnchor
      .constraint(greaterThanOrEqualTo: segmentedControl.bottomAnchor,constant: 8)
    
    let pointsOfInterestVerticalAlignConstraint = pointsOfInterestLabel
      .centerYAnchor.constraint(equalTo: pointsOfInterestSwitch.centerYAnchor)
    
    topConstraint.isActive = true
    leadingConstraint.isActive = true
    trailingConstraint.isActive = true
    
    
    pointsOfInterestLabelTopConstraint.isActive = true
    pointsOfInterestLabelLeadingConstraint.isActive = true
    pointsOfInterestSwitchLeadingConstraint.isActive = true
    pointsOfinterestSwitchTopConstraint.isActive = true
    pointsOfInterestVerticalAlignConstraint.isActive = true
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
      break
    }
  }
  
  
  @objc func togglePointsOfInterest(_ sender: UISwitch) {
    if sender.isOn {
      mapView.pointOfInterestFilter = MKPointOfInterestFilter.includingAll
    } else {
      mapView.pointOfInterestFilter = MKPointOfInterestFilter.excludingAll
    }
  }
}
