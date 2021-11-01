//
//  MapViewController.swift
//  WorldTrotter- Programmatically-  “Reema.Mousa”-iter1
//
//  Created by Reema Mousa on 20/03/1443 AH.
//
import UIKit
import MapKit

class MapViewController: UIViewController
{
  var mapView: MKMapView!
  var segmentedControl: UISegmentedControl!

  var labelMap: UILabel!
  var switchMap: UISwitch!
  
  override func loadView()
  {
    //-
    mapView = MKMapView()
    view = mapView
    
    segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
    segmentedControl.backgroundColor = UIColor.systemBackground
    segmentedControl.selectedSegmentIndex = 0
    segmentedControl.addTarget(self,
                               action: #selector(mapTypeChanged(_:)),
                               for: .valueChanged)
    segmentedControl.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(segmentedControl)
    let margins = view.layoutMarginsGuide
    let topConstraint = segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
    let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
    let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
    
    topConstraint.isActive = true
    leadingConstraint.isActive = true
    trailingConstraint.isActive = true
    

    //switch and label
    //label
    labelMap = UILabel()
    labelMap.text = "Points of Interest"
    labelMap.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(labelMap)
    
    //switch
    switchMap = UISwitch()
    view.addSubview(switchMap)
    switchMap.addTarget(self,
                        action: #selector(toggolePointsOfSwiterrest(_:)),
                        for: .valueChanged)
    
    switchMap.translatesAutoresizingMaskIntoConstraints = false
    // constraints X
    let SwitchMapCenterConstraint = switchMap.centerYAnchor.constraint(equalTo: labelMap.centerYAnchor)
    let SwitchMapTopConstraint = switchMap.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 8)
    
    let LabelMapCenterConstraint = labelMap.centerYAnchor.constraint(equalTo: switchMap.centerYAnchor)
    let  LabelMapTopConstraint = labelMap.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 8)
    
    // constraints Y
    let LabelLeadingConstraint = labelMap.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
    let SwitchLeadingConstraint = switchMap.leadingAnchor.constraint(equalTo: labelMap.trailingAnchor, constant: 8)
    
    LabelLeadingConstraint.isActive = true
    SwitchLeadingConstraint.isActive = true
    SwitchMapCenterConstraint.isActive = true
    SwitchMapTopConstraint.isActive = true
    LabelMapCenterConstraint.isActive = true
    LabelMapTopConstraint.isActive = true
    
    mapView.pointOfInterestFilter = .excludingAll

    
  }
  
  
  //-
  override func viewDidLoad()
  {
    super.viewDidLoad()
    
    print("MapViewController loaded its view.")
  }
  
  
  
  
  
  @objc func mapTypeChanged(_ segControl: UISegmentedControl)
  {
    switch segControl.selectedSegmentIndex
    {
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
  //-
  @objc func toggolePointsOfSwiterrest(_ poiSwitch: UISwitch)
  {
    if poiSwitch.isOn
    {
      mapView.pointOfInterestFilter = .includingAll
      
    }
    else
    {
      mapView.pointOfInterestFilter = .excludingAll
      
    }
  }
  
  
}




