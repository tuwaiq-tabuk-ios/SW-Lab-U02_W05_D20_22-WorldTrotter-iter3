//
//  ViewController.swift
//  WorldTrotter-“Abdulaziz_Hassuin”-iter1
//
//  Created by azooz alhwiti on 19/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
   
        // Do any additional setup after loading the view.
        
        let layer = CAGradientLayer()
        layer.frame = view.bounds
        layer.colors = [UIColor.red.cgColor, UIColor.blue.cgColor]
        view.layer.insertSublayer(layer, at: 0 )
    }
    
    
    
    
    
   

}

