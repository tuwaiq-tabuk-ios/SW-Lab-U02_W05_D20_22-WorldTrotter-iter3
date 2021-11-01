//
//  2ViewController.swift
//  WorldTrotter-MarzouqAlmukhlif-iter2
//
//  Created by Marzouq Almukhlif on 21/03/1443 AH.
//

import UIKit

class ConversionViewController: UIViewController {
  override func loadView() {
    view = UIView()
    
    // set gradient color for Main_View
    view.layerGradient()
    
    
    let valueFarenheitLabel = CMLabel(text: "212",
                                      textSize: 70,
                                      textColor:UIColor.cmWhite)
    
    view.addSubview(valueFarenheitLabel)
    valueFarenheitLabel.setTranslatesForResizingMask(valueFarenheitLabel, view, 8, view, true)
    
    
    let titleFarenheitLabel = CMLabel(text: "degrees Fahrenheit",
                                      textSize: 36,
                                      textColor: UIColor.cmWhite)
    
    view.addSubview(titleFarenheitLabel)
    titleFarenheitLabel.setTranslatesForResizingMask(titleFarenheitLabel, valueFarenheitLabel, 10, view)
    
    let isReallyLabel = CMLabel(text: "is really",
                                textSize: 36,
                                textColor: .black)
    
    view.addSubview(isReallyLabel)
    isReallyLabel.setTranslatesForResizingMask(isReallyLabel, titleFarenheitLabel, 40, view)
    
    let valueCelsiusLabel = CMLabel(text: "100",
                                    textSize: 70,
                                    textColor: UIColor.cmWhite)
    
    view.addSubview(valueCelsiusLabel)
    valueCelsiusLabel.setTranslatesForResizingMask(valueCelsiusLabel, isReallyLabel, 40, view)
    
    let titleCelsiusLabel = CMLabel(text: "degrees Celsius",
                                    textSize: 36,
                                    textColor: UIColor.cmWhite)
    
    view.addSubview(titleCelsiusLabel)
    titleCelsiusLabel.setTranslatesForResizingMask(titleCelsiusLabel, valueCelsiusLabel, 10, view)
    
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print(" ConversionViewController loaded VIew ")
    
  }
  
  
  
  
}
