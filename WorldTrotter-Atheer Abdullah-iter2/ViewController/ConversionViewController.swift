//
//  ViewController.swift
//  WorldTrotter-Atheer Abdullah-iter2
//
//  Created by Atheer abdullah on 20/03/1443 AH.
//


import UIKit

class ConversionViewController: UIViewController {
  
  //  override func viewWillAppear(_: Bool) {
  //    super.viewWillAppear(true)
  //
  //    view.backgroundColor = UIColor.cmWhiteBackground
  //  }
  
  
  override func loadView() {
    view = UIView()
    view.backgroundColor = UIColor.cmWhiteBackground
    
    let numberTop = CMLabel(text: "212",
                            fontSize: 70,
                            color: UIColor.cmOrange)
    
    let degreesFahrenheit = CMLabel(text: "degrees Fahrenheit",
                                    fontSize: 36,
                                    color: UIColor.cmOrange)
    
    let isReally = CMLabel(text: "is really",
                           fontSize: 36)
    
    let numberBottom = CMLabel(text: "100",
                               fontSize: 70,
                               color: UIColor.cmOrange)
    
    let degreesCelsius = CMLabel(text: "degrees Celsius",
                                 fontSize: 36,
                                 color: UIColor.cmOrange)
  
    
    view.addSubview(numberTop)
    view.addSubview(degreesFahrenheit)
    view.addSubview(isReally)
    view.addSubview(numberBottom)
    view.addSubview(degreesCelsius)
    
    
    NSLayoutConstraint.activate([
      numberTop.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
      numberTop.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      
      degreesFahrenheit.topAnchor.constraint(equalTo: numberTop.bottomAnchor, constant: 10),
      degreesFahrenheit.centerXAnchor.constraint(equalTo: numberTop.centerXAnchor),
      
      isReally.topAnchor.constraint(equalTo: degreesFahrenheit.bottomAnchor, constant: 40),
      isReally.centerXAnchor.constraint(equalTo: numberTop.centerXAnchor),
      
      numberBottom.topAnchor.constraint(equalTo: isReally.bottomAnchor, constant: 40),
      numberBottom.centerXAnchor.constraint(equalTo: numberTop.centerXAnchor),
      
      degreesCelsius.topAnchor.constraint(equalTo: numberBottom.bottomAnchor, constant: 10),
      degreesCelsius.centerXAnchor.constraint(equalTo: numberTop.centerXAnchor),
    ])
  }
}

