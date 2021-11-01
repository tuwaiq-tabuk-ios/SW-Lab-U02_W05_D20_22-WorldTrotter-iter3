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
    view.backgroundColor = UIColor.white
    
    //
    //
    //let lapel2 = UILabel(text:" "sife arya"", color: blue, size: 0.33)
    
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupScreen()
  }
  
  func setupScreen() {
    var allLabels: [UILabel] = []
    let fahrenheitNumber = UILabel(text: "212")
    let fahrenheitUnit = UILabel(text: "degrees Fahrenheit", size: 28)
    let isReallyLabel = UILabel(text: "is really", color: CIColor.black, size: 22)
    let celsiusNumber = UILabel(text: "100")
    let celsiusUnit = UILabel(text: "degrees Celsius", size: 28)
    
    allLabels.append(fahrenheitNumber)
    allLabels.append(fahrenheitUnit)
    allLabels.append(isReallyLabel)
    allLabels.append(celsiusNumber)
    allLabels.append(celsiusUnit)
    
    for label in allLabels {
      view.addSubview(label)
      label.translatesAutoresizingMaskIntoConstraints = false
    }
    
    let fahrenheitNumberTopConstraint = fahrenheitNumber.topAnchor
      .constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
    fahrenheitNumberTopConstraint.isActive = true
    
    let fahrenheitNumberCenterConstraint = fahrenheitNumber.centerXAnchor
      .constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
    fahrenheitNumberCenterConstraint.isActive = true
    
    
    for i in 1...allLabels.count-1 {
      let prevLabel = allLabels[i-1]
      let curLabel = allLabels[i]
      let centerXConstraint = curLabel.centerXAnchor
        .constraint(equalTo: fahrenheitNumber.centerXAnchor)
      centerXConstraint.isActive = true
      
      let bottomTopConstraint = curLabel.topAnchor
        .constraint(equalTo: prevLabel.bottomAnchor, constant: 8)
      bottomTopConstraint.isActive = true
    }
  }
}


extension UILabel {
  convenience init(text: String,
                   color: CIColor = CIColor(red: 0.33, green: 0.54, blue: 0.90),
                   size: CGFloat = 70) {
    self.init()
    self.text = text
    self.textColor = UIColor.init(ciColor: color)
    self.font = UIFont.systemFont(ofSize: size)
  }
  
}









//import UIKit
//
//class ConversionViewController: UIViewController {
//
//  override func loadView() {
//    view = UIView()
//    view.backgroundColor = UIColor.gray
//
////    let label1 = UILabel()
////    label1.text = "hdjfhj"
////    label1.textColor = .white
////    label1.font = label1.font.withSize(8)
////
//    //let lapel2 = UILabel(text: <#T##String#>, color: <#T##CIColor#>, size: <#T##CGFloat#>)
//
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
//
//  override func viewDidLoad() {
//    super.viewDidLoad()
//
//  }
//}
//
//
//extension UILabel {
//  convenience init(text: String,
//                   color: CIColor = CIColor(red: 0.15, green: 0.25, blue: 0.23),
//                   size: CGFloat = 70) {
//    self.init()
//    self.text = text
//    self.textColor = UIColor.init(ciColor: color)
//    self.font = UIFont.systemFont(ofSize: size)
//  }
//
//}
