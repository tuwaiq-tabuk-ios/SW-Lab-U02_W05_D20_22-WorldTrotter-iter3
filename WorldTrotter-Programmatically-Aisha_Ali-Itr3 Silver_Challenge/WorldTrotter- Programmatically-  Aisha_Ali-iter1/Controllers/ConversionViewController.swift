
//Shourtcut
//tn= Top Number
//dC= degreesCelsius

import UIKit


class ConversionViewController: UIViewController {
  
  var  customLabele:CustomLabel = CustomLabel()
  override func viewDidLoad() {
    
    super.viewDidLoad()
    print("ConversionViewController loaded its View.")
  }
  
  
  override func loadView() {
    view = UIView()
    
    //    F5F4F1
    view.backgroundColor = UIColor.cmWhite
    
    let numberTop = CustomLabel(withText: "212", size: 70, color: UIColor.cmOrange)
    
    let degreesFahrenheit = CustomLabel(withText: "degrees Fahrenheit", size: 36,  color: UIColor.cmOrange)
    
    let isReally = CustomLabel(withText: "is really", size: 36 )
    
    let numberBottom = CustomLabel(withText: "100", size: 70, color: UIColor.cmOrange)
    
    let degreesCelsius = CustomLabel(withText: "degrees Celsius", size: 36,  color: UIColor.cmOrange)
    
    
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
      degreesCelsius.centerXAnchor.constraint(equalTo: numberTop.centerXAnchor)
    ])
  }
}












