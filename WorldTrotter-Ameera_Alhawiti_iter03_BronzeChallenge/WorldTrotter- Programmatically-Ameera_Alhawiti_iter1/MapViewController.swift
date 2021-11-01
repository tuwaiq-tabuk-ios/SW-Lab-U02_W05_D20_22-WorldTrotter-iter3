import UIKit
import MapKit

class MapViewController: UIViewController {
  
  var mapView: MKMapView!
  
//  @IBOutlet var mySwitch: UISwitch!
  
  override func loadView() {
    mapView = MKMapView()
    view = mapView
   
    let label = UILabel()
    label.text = "Points of Interest"
// label.translatesAutoresizingMaskIntoConstraints = false
    
    let substitution = UISwitch()
    substitution.addTarget(self,
                           action: #selector(toggleChanged(_:)),
                           for: .valueChanged)
    
    let segmentedControl
      = UISegmentedControl(items: ["Standar", "Hybird", "Satelite"])
    segmentedControl.backgroundColor = UIColor.systemBackground
    segmentedControl.selectedSegmentIndex = 0
    
    segmentedControl.addTarget(self,
                               action:#selector(mapTypeChanged(_:)),
                               for:.valueChanged)
    
    segmentedControl.translatesAutoresizingMaskIntoConstraints = false
    label.translatesAutoresizingMaskIntoConstraints = false
    substitution.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(segmentedControl)
    view.addSubview(label)
    view.addSubview(substitution)
    
    let topConstraint
      = segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
    
    let margins = view.layoutMarginsGuide
    let leadingConstraint
      = segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
    let trailingConstraint
      = segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
    
    topConstraint.isActive = true
    leadingConstraint.isActive = true
    trailingConstraint.isActive = true
    
    let labelTopConstraint = label.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 15)
    let labelLeadingConstraint = label.leadingAnchor.constraint(equalTo: segmentedControl.leadingAnchor)
    
    labelTopConstraint.isActive = true
    labelLeadingConstraint.isActive = true
    
    let switchTopConstraint = substitution.centerYAnchor.constraint(equalTo: label.centerYAnchor)
    let switchLeadingConstraint = substitution.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 10)
    
    switchTopConstraint.isActive = true
    switchLeadingConstraint.isActive = true
    
    mapView.pointOfInterestFilter = .excludingAll

    
  }
  
  @objc func mapTypeChanged(_ segControl: UISegmentedControl){
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

    let label = UILabel()
    label.text = "Points of Interest"
    


  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("MapViewController loaded its view.")
    }

//  @IBAction func switchDidChang(_ sender: UISwitch){


  @objc func toggleChanged(_ toggleControl: UISwitch) {
          if toggleControl.isOn {
              mapView.pointOfInterestFilter = .includingAll
          } else {
              mapView.pointOfInterestFilter = .excludingAll
          }
      }
  
}

