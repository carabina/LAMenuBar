//
//  MenuCell.swift
//  Pods
//
//  Created by Luis Arias on 6/11/17.
//
//

import UIKit

public final class MenuCell: UICollectionViewCell {
  
  static let identifier = "MenuCellIdentifier"
  
  lazy var imageView: UIImageView = {
    let imageView = UIImageView()
    imageView.backgroundColor = .yellow
    return imageView
  }()
  
  public override init(frame: CGRect) {
    super.init(frame: frame)
    setupViews()
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setupViews() {
    addSubview(imageView)
    
    addConstraintsWithFormat(format: "H:[v0(28)]", view: imageView)
    addConstraintsWithFormat(format: "V:[v0(28)]", view: imageView)
    
    addConstraint(NSLayoutConstraint(item: imageView, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
    addConstraint(NSLayoutConstraint(item: imageView, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0))
  }
}
