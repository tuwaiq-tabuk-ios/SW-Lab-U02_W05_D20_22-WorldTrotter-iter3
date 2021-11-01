//
//  ConversionViewController.swift
//  WorldTrotter-iter1
//
//  Created by عبدالعزيز البلوي on 21/03/1443 AH.
//

import UIKit

class ConversionViewController: UIViewController {
  
  override func loadView() {
    view = UIView()
    view.backgroundColor =  UIColor(red: 0.96, green: 0.96, blue: 0.95, alpha: 1.00)
    
    
    let number1 = UILabel(withText: "212", size: 70)
    number1.translatesAutoresizingMaskIntoConstraints = false
    
    let degreesFahrenheit = UILabel(withText: "degrees Fahrenheit", size: 36)
    degreesFahrenheit.translatesAutoresizingMaskIntoConstraints = false
    
    let isReally = UILabel(withText: "is really", size: 36, color: UIColor.black)
    isReally.translatesAutoresizingMaskIntoConstraints = false
    
    let number2 = UILabel(withText: "100", size: 70)
    number2.translatesAutoresizingMaskIntoConstraints = false
    
    let degreesCelsius = UILabel(withText: "degrees Celsius", size: 36)
    degreesCelsius.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(number1)
    view.addSubview(degreesFahrenheit)
    view.addSubview(isReally)
    view.addSubview(number2)
    view.addSubview(degreesCelsius)
    
    let TnOopConstraint = number1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
    let TNXConstraint = number1.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    TnOopConstraint.isActive = true
    TNXConstraint.isActive = true
    
    let DFTopContraint = degreesFahrenheit.topAnchor.constraint(equalTo: number1.bottomAnchor, constant: 8)
    let DFXConstraint = degreesFahrenheit.centerXAnchor.constraint(equalTo: number1.centerXAnchor)
    DFTopContraint.isActive = true
    DFXConstraint.isActive = true
    
    let IRTopConstraint = isReally.topAnchor.constraint(equalTo: degreesFahrenheit.bottomAnchor, constant: 8)
    let IRXConstraint = isReally.centerXAnchor.constraint(equalTo: number1.centerXAnchor)
    IRTopConstraint.isActive = true
    IRXConstraint.isActive = true
    
    let BNTopConstraint = number2.topAnchor.constraint(equalTo: isReally.bottomAnchor, constant: 8)
    let BNXConstraint = number2.centerXAnchor.constraint(equalTo: number1.centerXAnchor)
    BNTopConstraint.isActive = true
    BNXConstraint.isActive = true
    
    let DCTopConstraint = degreesCelsius.topAnchor.constraint(equalTo: number2.bottomAnchor, constant: 8)
    let DCXConstraint = degreesCelsius.centerXAnchor.constraint(equalTo: number1.centerXAnchor)
    DCTopConstraint.isActive = true
    DCXConstraint.isActive = true
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("ConversionViewController loaded its view.")
  }
}

typealias CustomLabel = UILabel

extension CustomLabel {
  convenience init(withText text: String, size font: CGFloat, color: UIColor = UIColor(red: 0.88, green: 0.35, blue: 0.16, alpha: 1.00)) {
    self.init()
    self.text = text
    self.font = UIFont.systemFont(ofSize: font, weight: .regular)
    self.textColor = color
  }
  
  // Do any additional setup after loading the view.
  
  
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destination.
   // Pass the selected object to the new view controller.
   }
   */
  
}
