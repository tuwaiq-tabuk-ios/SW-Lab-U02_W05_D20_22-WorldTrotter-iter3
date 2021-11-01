//
//  ViewController.swift
//  WorldTrotter- Programmatically-  “Reema.Mousa”-iter1
//
//  Created by Reema Mousa on 18/03/1443 AH.
//

import UIKit


class ConversionViewController: UIViewController {


  override func viewDidLoad() {
    super.viewDidLoad()
    
print("ConversionViewController loaded its View.")
    

  }

  override func viewWillAppear(_: Bool) {
      super.viewWillAppear(true)
      
      let red = CGFloat(Float(arc4random()) / (Float(UINT32_MAX)))
      let blue = CGFloat(Float(arc4random()) / (Float(UINT32_MAX)))
      let green = CGFloat(Float(arc4random()) / (Float(UINT32_MAX)))
      
      print(red, blue, green)
      
      view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
  }

}

