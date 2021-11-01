//
//  CMLabel.swift
//  WorldTrotter-Atheer Abdullah-iter2
//
//  Created by Atheer abdullah on 26/03/1443 AH.
//

import Foundation
import UIKit
class CMLabel : UILabel {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemeented")
  }
  
  init(text: String,
      fontSize: CGFloat,
      color: UIColor = UIColor.black) {
    super.init(frame: .zero)
    
    self.text = text
    self.font = UIFont.systemFont(ofSize: fontSize, weight: .regular)
    self.textColor = color
    
    configure()
  }
  
  func configure() {
    translatesAutoresizingMaskIntoConstraints = false
  }
}
