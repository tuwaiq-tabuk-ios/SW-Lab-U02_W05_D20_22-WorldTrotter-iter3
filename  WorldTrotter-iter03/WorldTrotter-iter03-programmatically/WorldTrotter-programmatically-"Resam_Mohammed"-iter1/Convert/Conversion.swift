//
//  ViewController.swift
//  WorldTrotter-programmatically-"Resam_Mohammed"-iter1
//
//  Created by Ressam Al-Thebailah on 18/03/1443 AH.
//

import UIKit

class Conversion: UIViewController {
  
  override func viewDidLoad() {
   super.viewDidLoad()
      print("ConversionViewController loaded its view.")
 }
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.view.backgroundColor = randomColor()
  }
  
  
  func randomColor() -> UIColor{
    let red = CGFloat(arc4random_uniform(256)) / 255.0
    let green = CGFloat(arc4random_uniform(256)) / 255.0
    let blue = CGFloat(arc4random_uniform(256)) / 255.0
    return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
  }
  
  
}


