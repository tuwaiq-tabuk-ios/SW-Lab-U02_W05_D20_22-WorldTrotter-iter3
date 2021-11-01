//
//  ConversionViewController.swift
//  Nada ViewController.
//
//  Created by apple on 21/03/1443 AH.
//

import Foundation
import UIKit
class ConversionViewController : UIViewController {
 
  @IBOutlet var rootView: UIView!

  var valueFarenheitLabel: UILabel!
  var titleFarenheitLabel: UILabel!
  var isReallyLabel: UILabel!
  var valueCelsiusLabel: UILabel!
  var titleCelsiusLabel : UILabel!

 //NslayoutConstraint.activate([])
  
  
  override func viewDidAppear(_ animated: Bool) {
    let colors:[UIColor] = [.blue,.red,.darkGray]
    rootView.backgroundColor = colors[Int.random(in: 0...colors.count-1)]
  }
  

      override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("ConversionViewController loaded its view.")
        
        super.viewWillAppear(true)
        
         valueFarenheitLabel = UILabel()
        valueFarenheitLabel.text = "212"
        valueFarenheitLabel.font = UIFont.systemFont(ofSize: 70)
        valueFarenheitLabel.textColor = UIColor(red: 225.0/255
                                                , green: 88.0/255.0
                                                , blue: 41.0 / 255.0
                                                , alpha: 1)
        
        valueFarenheitLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(valueFarenheitLabel)
        let valueFarenheitLabeltopConstraint = valueFarenheitLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
        let valueFarenheitLabelcenterConstraint = valueFarenheitLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        
        valueFarenheitLabeltopConstraint.isActive = true
        valueFarenheitLabelcenterConstraint.isActive = true
     
        titleFarenheitLabel = UILabel()
        titleFarenheitLabel.text = "degrees Fahrenheit"
        titleFarenheitLabel.font = UIFont.systemFont(ofSize: 36)
        titleFarenheitLabel.textColor = UIColor(red: 225.0/255
                                                , green: 88.0/255.0
                                                , blue: 41.0 / 255.0
                                                , alpha: 1)
        
        titleFarenheitLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleFarenheitLabel)
        let titleFarenheitLabeltopConstraint = titleFarenheitLabel.topAnchor.constraint(equalTo: valueFarenheitLabel.bottomAnchor, constant: 10)
        let titleFarenheitLabelcenterConstraint = titleFarenheitLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        
        titleFarenheitLabeltopConstraint.isActive = true
        titleFarenheitLabelcenterConstraint.isActive = true
        
        isReallyLabel = UILabel()
        isReallyLabel.text = "is really"
        isReallyLabel.font = UIFont.systemFont(ofSize: 36)
        isReallyLabel.textColor = UIColor(red: 225.0/255
                                          , green: 255.0/255.0
                                          , blue: 255.0 / 255.0
                                                , alpha: 1)
        
        isReallyLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(isReallyLabel)
        let isReallyLabelLabeltopConstraint = isReallyLabel.topAnchor.constraint(equalTo: titleFarenheitLabel.bottomAnchor, constant: 40)
        let isReallyLabelLabelcenterConstraint = isReallyLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        
        isReallyLabelLabeltopConstraint.isActive = true
        isReallyLabelLabelcenterConstraint.isActive = true
        
        valueCelsiusLabel = UILabel()
        valueCelsiusLabel.text = "100"
        valueCelsiusLabel.font = UIFont.systemFont(ofSize: 70)
        valueCelsiusLabel.textColor = UIColor(red: 225.0/255
                                              , green: 88.0/255.0
                                              , blue: 41.0 / 255.0
                                              , alpha: 1)
        
        valueCelsiusLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(valueCelsiusLabel)
        let valueCelsiusLabelLabeltopConstraint = valueCelsiusLabel.topAnchor.constraint(equalTo: isReallyLabel.bottomAnchor, constant: 40)
        let valueCelsiusLabelLabelcenterConstraint = valueCelsiusLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        
        valueCelsiusLabelLabeltopConstraint.isActive = true
        valueCelsiusLabelLabelcenterConstraint.isActive = true
        
         titleCelsiusLabel = UILabel()
        titleCelsiusLabel.text = "degrees Celsius"
        titleCelsiusLabel.font = UIFont.systemFont(ofSize: 36)
        titleCelsiusLabel.textColor = UIColor(red: 225.0/255
                                              , green: 88.0/255.0
                                              , blue: 41.0 / 255.0
                                              , alpha: 1)
        
        titleCelsiusLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleCelsiusLabel)
        let titleCelsiusLabeltopConstraint = titleCelsiusLabel.topAnchor.constraint(equalTo: valueCelsiusLabel.bottomAnchor, constant: 10)
        let titleCelsiusLabelcenterConstraint = titleCelsiusLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        
        titleCelsiusLabeltopConstraint.isActive = true
        titleCelsiusLabelcenterConstraint.isActive = true
        
      
        
        
        
        
  }
   
}

