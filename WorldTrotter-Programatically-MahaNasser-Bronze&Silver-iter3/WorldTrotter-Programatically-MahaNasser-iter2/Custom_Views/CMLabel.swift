//
//  CMLabel.swift
//  WorldTrotter-Programatically-MahaNasser-iter2
//
//  Created by Maha S on 01/11/2021.
//


import UIKit

class CMLabel: UILabel {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  init( text: String,
        textSize: CGFloat,
        textColor: UIColor = UIColor.black) {

    super.init(frame: .zero)
      self.text = text
      self.font = UIFont.systemFont(ofSize: textSize)
      self.textColor = textColor

      configure()

    }

    private func configure() {
      translatesAutoresizingMaskIntoConstraints = false
    }

  }
