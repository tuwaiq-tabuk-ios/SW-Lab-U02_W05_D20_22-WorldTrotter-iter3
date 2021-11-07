//
//  ConversionViewController.swift
//  WorldTrotter-“Ahmed_alqhtani”-iter1
//
//  Created by Ahmed awadh alqhtani on 22/03/1443 AH.
//
import UIKit

class ConversionViewController: UIViewController {
  override func loadView() {
    view = UIView()
    
    view.backgroundColor = UIColor.cmWhiteBackground
    
    
    let valueFarenheitLabel = CmLabel(text: "212",
                                      textSize: 70,
                                      textColor:UIColor.cmOrange)
    
    view.addSubview(valueFarenheitLabel)
    
    let titleFarenheitLabel = CmLabel(text: "degrees Fahrenheit",
                                      textSize: 36,
                                      textColor: UIColor.cmOrange)
    
    view.addSubview(titleFarenheitLabel)
    
    let isReallyLabel = CmLabel(text: "is really",
                                textSize: 36,
                                textColor: .black)
    
    view.addSubview(isReallyLabel)
    
    let valueCelsiusLabel = CmLabel(text: "100",
                                    textSize: 70,
                                    textColor: UIColor.cmOrange)
    
    view.addSubview(valueCelsiusLabel)
    
    let titleCelsiusLabel = CmLabel(text: "degrees Celsius",
                                    textSize: 36,
                                    textColor: UIColor.cmOrange)
    
    view.addSubview(titleCelsiusLabel)
    
    
    NSLayoutConstraint.activate([
                                  valueFarenheitLabel.topAnchor .constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 8),
                                  
                                  
                                  valueFarenheitLabel.centerXAnchor .constraint(equalTo: view.centerXAnchor),
                                  
                                  
                                  titleFarenheitLabel.topAnchor .constraint(equalTo: valueFarenheitLabel.bottomAnchor,constant:10),
                                  
                                  titleFarenheitLabel.centerXAnchor
                                    .constraint(equalTo: view.centerXAnchor),
                                  
                                  
                                  isReallyLabel.topAnchor .constraint(equalTo: titleFarenheitLabel.bottomAnchor,constant: 40),
                                  
                                  
                                  isReallyLabel.centerXAnchor .constraint(equalTo: view.centerXAnchor),
                                  
                                  
                                  valueCelsiusLabel.topAnchor.constraint(equalTo: isReallyLabel.bottomAnchor,constant: 40),
                                  
                                  valueCelsiusLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                  
                                  
                                  titleCelsiusLabel.topAnchor .constraint(equalTo: valueCelsiusLabel.bottomAnchor,constant: 10),
                                  
                                  
                                  titleCelsiusLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
    
    
    
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    print(" ConversionViewController loaded VIew ")
    
  }
  
  
}


//import UIKit
//
//class ConversionViewController: UIViewController {
//
//  override func loadView() {
//    view = UIView()
//    view.backgroundColor = UIColor.white
//
//
//
//  }
//
//  override func viewDidLoad() {
//    super.viewDidLoad()
//    setupScreen()
//  }
//
//  func setupScreen() {
//    var allLabels: [UILabel] = []
//    let fahrenheitNumber = UILabel(text: "212")
//    let fahrenheitUnit = UILabel(text: "degrees Fahrenheit", size: 28)
//    let isReallyLabel = UILabel(text: "is really", color: CIColor.black, size: 22)
//    let celsiusNumber = UILabel(text: "100")
//    let celsiusUnit = UILabel(text: "degrees Celsius", size: 28)
//
//    allLabels.append(fahrenheitNumber)
//    allLabels.append(fahrenheitUnit)
//    allLabels.append(isReallyLabel)
//    allLabels.append(celsiusNumber)
//    allLabels.append(celsiusUnit)
//
//    for label in allLabels {
//      view.addSubview(label)
//      label.translatesAutoresizingMaskIntoConstraints = false
//    }
//
//    let fahrenheitNumberTopConstraint = fahrenheitNumber.topAnchor
//      .constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
//    fahrenheitNumberTopConstraint.isActive = true
//
//    let fahrenheitNumberCenterConstraint = fahrenheitNumber.centerXAnchor
//      .constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
//    fahrenheitNumberCenterConstraint.isActive = true
//
//
//    for i in 1...allLabels.count-1 {
//      let prevLabel = allLabels[i-1]
//      let curLabel = allLabels[i]
//      let centerXConstraint = curLabel.centerXAnchor
//        .constraint(equalTo: fahrenheitNumber.centerXAnchor)
//      centerXConstraint.isActive = true
//
//      let bottomTopConstraint = curLabel.topAnchor
//        .constraint(equalTo: prevLabel.bottomAnchor, constant: 8)
//      bottomTopConstraint.isActive = true
//    }
//  }
//}
//
//
//extension UILabel {
//  convenience init(text: String,
//                   color: CIColor = CIColor(red: 0.255, green: 0.99, blue: 0.15),
//                   size: CGFloat = 70) {
//    self.init()
//    self.text = text
//    self.textColor = UIColor.init(ciColor: color)
//    self.font = UIFont.systemFont(ofSize: size)
//  }
//
//}
//








