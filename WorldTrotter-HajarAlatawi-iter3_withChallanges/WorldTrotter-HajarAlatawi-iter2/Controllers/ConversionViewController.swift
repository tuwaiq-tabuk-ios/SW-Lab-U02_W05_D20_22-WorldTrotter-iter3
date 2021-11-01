import UIKit

class ConversionViewController: UIViewController {
  
  override func loadView () {
    
    view = UIView ()
    view.backgroundColor = UIColor.cmWhiteBackground
    
    let valueFahrenheitLabel = CustomLabel (text: "212",
                                           fontSize: 70,
                                           textColor: UIColor.cmOrange)
    
    let titleFahrenheitLabel = CustomLabel (text: "degrees Fahrenheit",
                                            fontSize: 36,
                                            textColor: UIColor.cmOrange)
    
    let isReallyLabel = CustomLabel (text: "is really",
                                     fontSize: 36,
                                     textColor: .black)
    
    let valueCelsiusLabel = CustomLabel (text: "100",
                                         fontSize: 70,
                                         textColor: UIColor.cmOrange)
     
    let titleCelsiusLabel = CustomLabel (text: "degrees Celsius",
                                         fontSize: 36,
                                         textColor: UIColor.cmOrange)
    
    
    //adding labels to the root view:
    view.addSubview (valueFahrenheitLabel)
    view.addSubview (titleFahrenheitLabel)
    view.addSubview (isReallyLabel)
    view.addSubview (valueCelsiusLabel)
    view.addSubview (titleCelsiusLabel)
    
    
    //constraints for valueFahrenheitLabel:
    let valueFahrenheitTopConstraint
      = valueFahrenheitLabel.topAnchor.constraint (
        equalTo: view.safeAreaLayoutGuide.topAnchor,
        constant: 8)
    let valueFahrenheitXConstraint
      = valueFahrenheitLabel.centerXAnchor.constraint (
        equalTo: view.centerXAnchor)
    
    //activate the constraints:
    valueFahrenheitTopConstraint.isActive = true
    valueFahrenheitXConstraint.isActive = true
    
    
    //constraints for titleFahrenheitLabel:
    let titleFahrenheitTopContraint
      = titleFahrenheitLabel.topAnchor.constraint (
        equalTo: valueFahrenheitLabel.bottomAnchor,
        constant: 8)
    let titleFahrenheitXConstraint
      = titleFahrenheitLabel.centerXAnchor.constraint (
        equalTo: valueFahrenheitLabel.centerXAnchor)
    
    //activate the constraints:
    titleFahrenheitTopContraint.isActive = true
    titleFahrenheitXConstraint.isActive = true
    
    
    //constraints for isReallyLabel:
    let isReallyTopConstraint
      = isReallyLabel.topAnchor.constraint (
        equalTo: titleFahrenheitLabel.bottomAnchor,
        constant: 8)
    let isReallyXConstraint
      = isReallyLabel.centerXAnchor.constraint (
        equalTo: valueFahrenheitLabel.centerXAnchor)
    
    //activate the constraints:
    isReallyTopConstraint.isActive = true
    isReallyXConstraint.isActive = true
    
    
    //constraints for valueCelsiusLabel:
    let valueCelsiusTopConstraint
      = valueCelsiusLabel.topAnchor.constraint (
        equalTo: isReallyLabel.bottomAnchor,
        constant: 8)
    let valueCelsiusXConstraint
      = valueCelsiusLabel.centerXAnchor.constraint (
        equalTo: valueFahrenheitLabel.centerXAnchor)
    
    //activate the constraints:
    valueCelsiusTopConstraint.isActive = true
    valueCelsiusXConstraint.isActive = true
    
    //constraints for titleCelsiusLabel:
    let titleCelsiusTopConstraint
      = titleCelsiusLabel.topAnchor.constraint (
        equalTo: valueCelsiusLabel.bottomAnchor,
        constant: 8)
    let titleCelsiusXConstraint
      = titleCelsiusLabel.centerXAnchor.constraint (
        equalTo: valueFahrenheitLabel.centerXAnchor)
    
    //activate the constraints:
    titleCelsiusTopConstraint.isActive = true
    titleCelsiusXConstraint.isActive = true
    
  }
  
  
  override func viewDidLoad () {
    super.viewDidLoad ()
    
  }
  
}
