//
//  ConversionViewController.swift
//  MapAndConversion-Programmaticlly
//
//  Created by A A on 22/03/1443 AH.
//

import UIKit

class ConversionViewController: UIViewController {
  
  override func loadView () {
    
    // Create an empty view
    view = UIView()
    view.backgroundColor = UIColor.cmWhiteBackground
    
    // Create a value Fahrenheit label
    let valueFahrenheitLabel = CMLabel(text: "212",
                                       textSize: 70,
                                       textColor: UIColor.cmOrange)
    
    // Create a title Fahrenheit label
    let titleFahrenheitLabel = CMLabel(text: "degrees Fahrenheit",
                                       textSize: 36,
                                       textColor: UIColor.cmOrange)
    
    // Create an isReally Label
    let isReallyLabel = CMLabel(text:"is really",
                                textSize: 36)
    
    // Create a value Celsius label
    let valueCelsiusLabel = CMLabel(text: "100",
                                    textSize: 70,
                                    textColor: UIColor.cmOrange)
    
    // Create a title Celsius Label
    let titleCelsiusLabel = CMLabel(text: "degrees Celsius",
                                    textSize: 36,
                                    textColor: UIColor.cmOrange)
    
    view.addSubview(valueFahrenheitLabel)
    view.addSubview(titleFahrenheitLabel)
    view.addSubview(isReallyLabel)
    view.addSubview(valueCelsiusLabel)
    view.addSubview(titleCelsiusLabel)
    
    // Add constraints
    NSLayoutConstraint.activate([
      valueFahrenheitLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
      valueFahrenheitLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      titleFahrenheitLabel.topAnchor.constraint(equalTo: valueFahrenheitLabel.bottomAnchor, constant: 10),
      titleFahrenheitLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      isReallyLabel.topAnchor.constraint(equalTo: titleFahrenheitLabel.bottomAnchor, constant: 40),
      isReallyLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      valueCelsiusLabel.topAnchor.constraint(equalTo: isReallyLabel.bottomAnchor, constant: 40),
      valueCelsiusLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      titleCelsiusLabel.topAnchor.constraint(equalTo: valueCelsiusLabel.bottomAnchor, constant: 10),
      titleCelsiusLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
    
  }
  
}

