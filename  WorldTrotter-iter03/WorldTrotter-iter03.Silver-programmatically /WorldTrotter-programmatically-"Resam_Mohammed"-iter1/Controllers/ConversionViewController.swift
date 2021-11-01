//
//  ViewController.swift
//  WorldTrotter-programmatically-"Resam_Mohammed"-iter1
//
//  Created by Ressam Al-Thebailah on 18/03/1443 AH.
//

import UIKit

class ConversionViewController: UIViewController {
  override func loadView() {
    view = UIView()
    view.backgroundColor = UIColor.cmWhiteBackground
    
    
    let valueFehrenheitLabel = CMLabel(text:"212",
                                            textSize:70 ,
                                            textColor: UIColor.cmOrange)
    
    let titleFehrenheitLabel = CMLabel(text:"degrees Fehrenheit",
                                            textSize: 36,
                                            textColor:UIColor.cmOrange)
    
    let isReallyLabel = CMLabel(text:"is really",
                                     textSize: 36,
                                     textColor: UIColor.black)
    
    let valueCelsiusLabel = CMLabel(text: "100",
                                         textSize: 70,
                                         textColor: UIColor.cmOrange)
    
    let titleCelsiusLabel = CMLabel(text: "degrees Celsius ",
                                         textSize: 36,
                                         textColor:UIColor.cmOrange)
    
    view.addSubview(valueFehrenheitLabel)
    view.addSubview(titleFehrenheitLabel)
    view.addSubview(isReallyLabel)
    view.addSubview(valueCelsiusLabel)
    view.addSubview(titleCelsiusLabel)
    
    NSLayoutConstraint.activate ([
      valueFehrenheitLabel.topAnchor
        .constraint(equalTo:view.safeAreaLayoutGuide.topAnchor,constant:8),
      
      valueFehrenheitLabel.centerXAnchor
        .constraint(equalTo:view.centerXAnchor),
      
      titleFehrenheitLabel.topAnchor
        .constraint(equalTo:valueFehrenheitLabel.bottomAnchor, constant:10),
      
      titleFehrenheitLabel.centerXAnchor
        .constraint(equalTo:view.centerXAnchor),
      
      isReallyLabel.topAnchor
        .constraint(equalTo:titleFehrenheitLabel.bottomAnchor, constant:40),
      
      isReallyLabel.centerXAnchor
        .constraint(equalTo:view.centerXAnchor),
      
      valueCelsiusLabel.topAnchor
        .constraint(equalTo:isReallyLabel.bottomAnchor, constant:40),
      
      valueCelsiusLabel.centerXAnchor
        .constraint(equalTo:view.centerXAnchor),
      
      titleCelsiusLabel.topAnchor
        .constraint(equalTo:valueCelsiusLabel.bottomAnchor, constant:10),
      
      titleCelsiusLabel.centerXAnchor
        .constraint(equalTo:view.centerXAnchor),
    ])
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("ConversionViewController loaded its view.")
  }
}


