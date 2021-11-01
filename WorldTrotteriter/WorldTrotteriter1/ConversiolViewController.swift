//
//  ConversiolViewController.swift
//  WorldTrotteriter1
//
//  Created by Yousef Albalawi on 25/03/1443 AH.
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
