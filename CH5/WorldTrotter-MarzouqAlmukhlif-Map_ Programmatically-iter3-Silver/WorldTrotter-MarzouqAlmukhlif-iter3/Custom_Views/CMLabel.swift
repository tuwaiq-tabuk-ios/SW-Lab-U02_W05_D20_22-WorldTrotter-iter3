//
//  CMLabel.swift
//  WorldTrotter-MarzouqAlmukhlif-iter3
//
//  Created by Marzouq Almukhlif on 26/03/1443 AH.
//

import UIKit

class CMLabel: UILabel {
  
  override init(frame: CGRect) {
    super .init(frame: frame)
  }
  required init?(coder:NSCoder){
    fatalError("init(coder:) has not been implemented")
  }
  
  init( text: String ,
        textSize: CGFloat,
        textColor: UIColor = UIColor.black){
    
    super.init(frame: .zero)
    self.text = text
    self.font = UIFont.systemFont(ofSize: textSize)
    self.textColor = textColor
    
    customize()
    
  }
  
  private func customize() {
    translatesAutoresizingMaskIntoConstraints = false
  }
  
  
  func setTranslatesForResizingMask(_ label:UIView,_ topLabel:UIView,_ constant:CGFloat = 0,_ mainView:UIView, _ firstView:Bool = false) {
    if firstView {
      label.topAnchor.constraint(equalTo: topLabel.safeAreaLayoutGuide.topAnchor,constant: constant).isActive = true
      label.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
    } else {
      label.topAnchor.constraint(equalTo: topLabel.bottomAnchor,constant: constant).isActive = true
      label.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
    }
  }
  
  
}
