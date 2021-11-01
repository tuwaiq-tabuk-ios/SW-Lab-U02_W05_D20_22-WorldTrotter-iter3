//
//  ViewController.swift
//  WorldTrotter-Map
//
//  Created by Mohammed on 20/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    //let gradient = CAGradientLayer()
    
   // gradient.frame = view.bounds
    //    gradient.colors = [UIColor.purple.cgColor,UIColor.blue.cgColor,UIColor.blue.cgColor,UIColor.blue.cgColor,UIColor.purple.cgColor,
                  //         ]
        
      //  view.layer.insertSublayer(gradient, at: 0)
}
    
    override func viewWillAppear(_ animated: Bool) {
        var randomFloat: CGFloat {
            return CGFloat(Float.random(in: 0.0...1.0))
        }
        
          let randomColor = UIColor(red: randomFloat, green: randomFloat, blue: randomFloat, alpha: 1.0)
          view.backgroundColor = randomColor
      }
    
        
    
   
    }
    



