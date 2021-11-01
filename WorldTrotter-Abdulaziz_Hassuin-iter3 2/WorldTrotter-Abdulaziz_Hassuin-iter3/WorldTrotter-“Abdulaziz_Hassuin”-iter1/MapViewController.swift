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
        
        
        segmentedControl.addTarget(self,
                                   action: #selector(mapTypeChanged(_:)), for: .valueChanged)
        
            
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


