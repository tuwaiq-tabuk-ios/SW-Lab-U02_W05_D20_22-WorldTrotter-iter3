//
//  2ViewController.swift
//  WorldTrotter-MarzouqAlmukhlif-iter2
//
//  Created by Marzouq Almukhlif on 21/03/1443 AH.
//

import UIKit

class ConversionViewController: UIViewController {
  var stckView: UIStackView!
  
  override func loadView() {
    
    view = UIView()
    
    
    let firstLabel = createLabel("212", 70.0, .white)
    view.addSubview(firstLabel)
    firstLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 8).isActive = true
    firstLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    
    
    let secondLabel = createLabel("degrees Fahrenheit", 36.0, .white)
    view.addSubview(secondLabel)
    setTranslatesForResizingMask(secondLabel,firstLabel,10)
    
    let thirdLabel = createLabel("is really", 36.0, .black)
    view.addSubview(thirdLabel)
    setTranslatesForResizingMask(thirdLabel,secondLabel,40)
    
    let fourthLabel = createLabel("100", 70.0, .white)
    view.addSubview(fourthLabel)
    setTranslatesForResizingMask(fourthLabel,thirdLabel,40)
    
    let fifthLabel = createLabel("degrees Celsius", 36.0, .white)
    view.addSubview(fifthLabel)
    setTranslatesForResizingMask(fifthLabel,fourthLabel,10)
    
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  
  override func viewWillAppear(_ animated: Bool) {
    let colorTop =  UIColor(red: 0.89, green: 0.41, blue: 0.34, alpha: 1.00).cgColor
    
    let colorBottom = UIColor(red: 0.98, green: 0.60, blue: 0.42, alpha: 1.00).cgColor
    
    let gradientLayer = CAGradientLayer()
    gradientLayer.colors = [colorTop, colorBottom]
    gradientLayer.locations = [0.0, 1.0]
    gradientLayer.frame = view.bounds
    view.layer.insertSublayer(gradientLayer, at:0)
  }
  
  
  func createLabel(_ text:String,
                   _ textSize:CGFloat,
                   _ textColor:UIColor) -> UILabel {
    let label = UILabel()
    label.text = text
    label.textColor = textColor
    label.textAlignment = .center
    label.font = UIFont.systemFont(ofSize: textSize)
    label.translatesAutoresizingMaskIntoConstraints = false
    
    return label
  }
  
  
  func setTranslatesForResizingMask(_ label:UIView,_ topLabel:UIView,_ constant:CGFloat = 0) {
    label.topAnchor.constraint(equalTo: topLabel.bottomAnchor,constant: constant).isActive = true
    label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    
  }
  
}
