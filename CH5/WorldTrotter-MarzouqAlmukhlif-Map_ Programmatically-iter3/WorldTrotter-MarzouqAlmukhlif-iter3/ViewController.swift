//
//  ViewController.swift
//  WorldTrotter-MarzouqAlmukhlif-iter1
//
//  Created by Marzouq Almukhlif on 18/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  
  override func viewWillAppear(_ animated: Bool) {
    let colorTop =  UIColor(red: 0.89, green: 0.41, blue: 0.34, alpha: 1.00).cgColor

    let colorBottom = UIColor(red: 0.98, green: 0.60, blue: 0.42, alpha: 1.00).cgColor

    let gradientLayer = CAGradientLayer()
    gradientLayer.colors = [colorTop, colorBottom]
    gradientLayer.locations = [0.0, 1.0]
    gradientLayer.frame = view.bounds
    view.layer.insertSublayer(gradientLayer, at:0)

  

  }
  
}

