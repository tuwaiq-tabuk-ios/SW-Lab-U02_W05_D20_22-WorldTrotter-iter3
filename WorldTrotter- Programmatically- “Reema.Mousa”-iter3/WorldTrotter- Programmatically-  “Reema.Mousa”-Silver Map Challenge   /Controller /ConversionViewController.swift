//
//  ViewController.swift
//  WorldTrotter- Programmatically-  “Reema.Mousa”-iter1
//
//  Created by Reema Mousa on 18/03/1443 AH.
//
import UIKit
class ConversionViewController: UIViewController {

  override func loadView() {
    view = UIView()
    
    view.backgroundColor = color.cmWhiteColor
    let numberTop = CMLabel(text:"212",
                            fontSize: 70,
                            textColor:color.cmOrangeColor)
      
    numberTop.translatesAutoresizingMaskIntoConstraints = false
    let degreesFahrenheit = CMLabel(text: "degrees Fahrenheit",
            fontSize: 36,
            textColor: color.cmOrangeColor)
    degreesFahrenheit.translatesAutoresizingMaskIntoConstraints = false
    
    let isReally = CMLabel(text:"is really",
                           fontSize: 36,
                           textColor: UIColor.black)
    
    isReally.translatesAutoresizingMaskIntoConstraints = false
    
    let numberBottom = CMLabel (text: "100" , fontSize: 70 , textColor: color.cmOrangeColor)
    
    numberBottom.translatesAutoresizingMaskIntoConstraints = false

    let degreesCelsius = CMLabel(text:"degrees Celsius",
                                 fontSize: 36,
                                 textColor: color.cmOrangeColor)
      
    degreesCelsius.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(numberTop)
    view.addSubview(degreesFahrenheit)
    view.addSubview(isReally)
    view.addSubview(numberBottom)
    view.addSubview(degreesCelsius)

    
    NSLayoutConstraint.activate( [
    
      numberTop.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
      numberTop.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      
      degreesFahrenheit.topAnchor.constraint(equalTo: numberTop.bottomAnchor, constant: 10) ,
      degreesFahrenheit.centerXAnchor.constraint(equalTo: numberTop.centerXAnchor),
      
      isReally.topAnchor.constraint(equalTo: degreesFahrenheit.bottomAnchor, constant: 40),
      isReally.centerXAnchor.constraint(equalTo: numberTop.centerXAnchor),
      
      numberBottom.topAnchor.constraint(equalTo: isReally.bottomAnchor, constant: 40),
      numberBottom.centerXAnchor.constraint(equalTo: numberTop.centerXAnchor),
      
      degreesCelsius.topAnchor.constraint(equalTo: numberBottom.bottomAnchor, constant: 10),
      degreesCelsius.centerXAnchor.constraint(equalTo: numberTop.centerXAnchor),
    
    ])
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("ConversionViewController loaded its view.")
  }
}


