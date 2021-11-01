//
//  ViewController.swift
//  WorLdTrotter
//
//  Created by ahlam  on 21/03/1443 AH.
//

import UIKit

import AVFoundation
import UIKit

class ViewController : UIViewController {
    override func viewDidLoad() {
      
        super.viewDidLoad()
      print("ConversionViewController loaded its View.")
        super.viewWillAppear(true)
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

