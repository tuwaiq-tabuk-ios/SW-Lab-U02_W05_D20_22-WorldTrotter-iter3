


import UIKit

class ConversionViewController : UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    print("ConversionViewController loaded its view.")
    
    view = UIView()
    view.backgroundColor = UIColor.CMWitebackground
    
    let numberTop = CMLabel (text:  "212",
                             fontSize: 70,
                             textColor: UIColor.CMOrange)
    
    let degreesFahrenheit  = CMLabel (text:"degrees Fahrenheit",
                                      fontSize:  36,
                                      textColor: UIColor .CMOrange)
    
    let isReally = CMLabel(text: "is really",
                           fontSize: 36)
    
    let numberBottom = CMLabel(text: "100",
                               fontSize: 70,
                               textColor: UIColor.CMOrange)
    
    let degreesCelsius = CMLabel(text: "degrees Celsius",
                                 fontSize: 36,
                                textColor: UIColor.CMOrange)
    
    
    view.addSubview(numberTop)
    view.addSubview(degreesFahrenheit)
    view.addSubview(isReally)
    view.addSubview(numberBottom)
    view.addSubview(degreesCelsius)
    
    
    let constraints = [
      numberTop.topAnchor
        .constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                    constant: 8),
      numberTop.centerXAnchor
        .constraint(equalTo: view.centerXAnchor),
      
      degreesFahrenheit.topAnchor
        .constraint(equalTo: numberTop.bottomAnchor,
                    constant: 10),
      degreesFahrenheit.centerXAnchor
        .constraint(equalTo: numberTop.centerXAnchor),
      
      isReally.topAnchor
        .constraint(equalTo: degreesFahrenheit.bottomAnchor,
                    constant: 40),
      isReally.centerXAnchor
        .constraint(equalTo: numberTop.centerXAnchor),
      
      numberBottom.topAnchor
        .constraint(equalTo: isReally.bottomAnchor,
                    constant: 40),
      numberBottom.centerXAnchor
        .constraint(equalTo: numberTop.centerXAnchor),
      
      degreesCelsius.topAnchor
        .constraint(equalTo: numberBottom.bottomAnchor,
                    constant: 10),
      degreesCelsius.centerXAnchor
        .constraint(equalTo: numberTop.centerXAnchor)
    ]
    NSLayoutConstraint.activate(constraints)
  }
  
}






