//
//  MapViewController.swift
//  WorldTrotter-“Abdulaziz_Hassuin”-iter1
//
//  Created by azooz alhwiti on 21/03/1443 AH.
//

import UIKit
import MapKit
class MapViewController: UIViewController {
  var mapView: MKMapView!
  var mapp :UISwitch!
  
  override func loadView() {
    // Create a map view
    mapView = MKMapView()
    // Set it as *the* view of this view controller
    view = mapView
    
    
    let segmentedControl = UISegmentedControl(items: ["Standard",
                                                      "Hybrid",
                                                      "Satellite"])
    
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
    
    
    segmentedControl.addTarget(self,
                               action: #selector(mapTypeChanged(_:)), for: .valueChanged)
    
    
    
    let label = UILabel()
    label.text = "Points of Interest"
    view.addSubview(label)
    label.translatesAutoresizingMaskIntoConstraints = false
    
    let topConstraint3 = label.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 8)
    
    let leadingConstraint3 = label.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
    let trailingConstraint3 = label.trailingAnchor.constraint(equalTo: margins.leadingAnchor ,constant:  150)
    topConstraint3.isActive = true
    leadingConstraint3.isActive = true
    trailingConstraint3.isActive = true
    
    mapp = UISwitch()
    mapp.isOn = true
    view.addSubview(mapp)
    
    mapp.translatesAutoresizingMaskIntoConstraints = false
    let topConstraint2 = mapp.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 8)
    
    let leadingConstraint2 = mapp.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 10)
    let trailingConstraint2 = mapp.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
    
    topConstraint2.isActive = true
    leadingConstraint2.isActive = true
    trailingConstraint2.isActive = true
    
    mapp.addTarget(self,
                   action: #selector(pointFilter),
                   for: .valueChanged)
    
  }
  
  @objc func pointFilter(){
    if mapp.isOn {
      mapView.pointOfInterestFilter = .includingAll
    } else{
      mapView.pointOfInterestFilter = .excludingAll
    }
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
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  // Do any additional setup after loading the view.
}


/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */


