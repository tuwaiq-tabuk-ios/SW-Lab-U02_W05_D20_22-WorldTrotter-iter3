
import UIKit
import MapKit

class MapViewController: UIViewController {
  
  var mapView: MKMapView!
  var pointOfInterestLabel: UILabel!
  var pointOfInterestSwitch: UISwitch!
  

  override func loadView () {
    mapView = MKMapView ()
    
    view = mapView
    
    let segmentedControl
      = UISegmentedControl (items: ["Standard",
                                   "Hybrid",
                                   "Satellite"])
    
    segmentedControl.backgroundColor = UIColor.systemBackground
    segmentedControl.selectedSegmentIndex = 0
    segmentedControl.addTarget (self,
                               action: #selector (mapTypeChanged (_:)),
                               for: .valueChanged)
    
    segmentedControl
      .translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview (segmentedControl)
    
    let topConstraint
      = segmentedControl.topAnchor
      .constraint (equalTo: view.safeAreaLayoutGuide.topAnchor,
                  constant: 8)
    
    let margins = view.layoutMarginsGuide
    
    let leadingConstraint
      = segmentedControl.leadingAnchor.constraint (
        equalTo: margins.leadingAnchor)
    
    let trailingConstraint
      = segmentedControl.trailingAnchor.constraint (
        equalTo: margins.trailingAnchor)
    
    topConstraint.isActive = true
    leadingConstraint.isActive = true
    trailingConstraint.isActive = true
    
    
    //Bronze Challenge: Points of Interest
    //declare UILabel
    let pointOfInterestLabel = UILabel ()
    pointOfInterestLabel.text = "Points of Interest"
    pointOfInterestLabel
      .translatesAutoresizingMaskIntoConstraints = false
    
    
    let pointOfInterestSwitch = UISwitch ()
    
   pointOfInterestSwitch.addTarget (self,
                                   action: #selector (togglePointOfInterest (_:)),
                                   for: .valueChanged)
    
    pointOfInterestSwitch
      .translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview (pointOfInterestLabel)
    view.addSubview (pointOfInterestSwitch)
    
    
    //UILabel Constraints
    let labelTopConstraint
      = pointOfInterestLabel.topAnchor.constraint (
        equalTo: segmentedControl.bottomAnchor,
        constant: 15)
    
    let labelLeadingConstraint
      = pointOfInterestLabel.leadingAnchor.constraint (
        equalTo: segmentedControl.leadingAnchor)
    
    labelTopConstraint.isActive = true
    labelLeadingConstraint.isActive = true
    
    
    //UISwitch constraints
    let switchTopConstraint
      = pointOfInterestSwitch.centerYAnchor.constraint (
        equalTo: pointOfInterestLabel.centerYAnchor)
    
    let switchLeadingConstraint
      = pointOfInterestSwitch.leadingAnchor.constraint (
        equalTo: pointOfInterestLabel.trailingAnchor,
        constant: 10)
    
    switchTopConstraint.isActive = true
    switchLeadingConstraint.isActive = true
    
  }
  
  
  @objc func togglePointOfInterest (_ sender: UISwitch) {
    
    if sender.isOn {
      mapView.pointOfInterestFilter
        = MKPointOfInterestFilter.includingAll
    }
    else {
      mapView.pointOfInterestFilter
        = MKPointOfInterestFilter.excludingAll
    }
  }
  
  
  override func viewDidLoad () {
    super.viewDidLoad ()
    
    print ("MapViewController loaded its view.")
    
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
      break
      
    }
  }
}

