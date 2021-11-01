//
//  ViewController.swift
//  WorldTrotter-iter1
//
//  Created by عبدالعزيز البلوي on 19/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
 
    //let gradient = CAGradientLayer()

     //   gradient.frame = view.bounds
  //  gradient.colors = [UIColor.blue.cgColor, UIColor.red.cgColor,UIColor.yellow.cgColor,UIColor.green.cgColor, UIColor.systemPink.cgColor,UIColor.systemIndigo.cgColor,UIColor.gray.cgColor]

       // view.layer.insertSublayer(gradient, at: 0)
}
  override func viewWillAppear(_ animated: Bool) {
      var randomFloat: CGFloat {
          return CGFloat(Float.random(in: 0.0...1.0))
      }
      
        let randomColor = UIColor(red: randomFloat, green: randomFloat, blue: randomFloat, alpha: 1.0)
        view.backgroundColor = randomColor
    }

  
}
