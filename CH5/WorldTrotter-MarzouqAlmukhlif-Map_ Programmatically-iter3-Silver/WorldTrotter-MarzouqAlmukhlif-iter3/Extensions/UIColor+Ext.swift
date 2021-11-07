//
//  UIColor+Ext.swift
//  WorldTrotter-MarzouqAlmukhlif-iter3
//
//  Created by Marzouq Almukhlif on 26/03/1443 AH.
//

import UIKit

extension UIColor {
  
  static let cmWhiteBackground =
    UIColor(red: 245.0/255.0,
            green: 244.0/255.0,
            blue: 241.0/255.0,
            alpha: 1)
  
  static let cmOrange =
    UIColor(red: 225.0/255.0,
            green: 88.0/255.0,
            blue: 41.0/255.0,
            alpha: 1.0)
  
  static let cmWhite =
    UIColor(red: 255.0/255.0,
            green: 255.0/255.0,
            blue: 255.0/255.0,
            alpha: 1.0)
  
  
  
}

extension UIView {
  
  func layerGradient() {
    let colorTop =  UIColor(red: 0.89, green: 0.41, blue: 0.34, alpha: 1.00).cgColor
    let colorBottom = UIColor(red: 0.98, green: 0.60, blue: 0.42, alpha: 1.00).cgColor
    
    let gradientLayer = CAGradientLayer()
    gradientLayer.colors = [colorTop, colorBottom]
    gradientLayer.locations = [0.0, 1.0]
    gradientLayer.frame = UIScreen.main.bounds
    self.layer.insertSublayer(gradientLayer, at:0)
  }
  
}
