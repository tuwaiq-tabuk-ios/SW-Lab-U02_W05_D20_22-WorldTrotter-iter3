//
//  ViewController.swift
//  WorldTrotter-“Mohammed_ALatawi”-iter1
//
//  Created by محمد العطوي on 19/03/1443 AH.
//

import UIKit
import MapKit
class ViewController: UIViewController {
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
       
    }
        
        override func viewWillAppear(_ animated: Bool) {
            var randomFloat: CGFloat {
                return CGFloat(Float.random(in: 0.0...1.0))
            }
            
              let randomColor = UIColor(red: randomFloat, green: randomFloat, blue: randomFloat, alpha: 1.0)
              view.backgroundColor = randomColor
          }
    
    
    
        
    }
    
    



