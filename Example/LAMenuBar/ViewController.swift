//
//  ViewController.swift
//  LAMenuBar
//
//  Created by Luis Arias on 06/11/2017.
//  Copyright (c) 2017 Luis Arias. All rights reserved.
//

import UIKit
import LAMenuBar

@available(iOS 9.0, *)
class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .gray
    
    configurateNavigationBar()
    setupMenuView()
  }
  
  private func setupMenuView() {
    
    // Create array of views that are going to be presented in each section
    let fV = UIView()
    fV.backgroundColor = UIColor(red: 150/255, green: 206/255, blue: 180/255, alpha: 1.0)
    
    let sV = UIView()
    sV.backgroundColor = UIColor(red: 255/255, green: 238/255, blue: 173/255, alpha: 1.0)
    
    let tV = UIView()
    tV.backgroundColor = UIColor(red: 255/255, green: 111/255, blue: 105/255, alpha: 1.0)
    
    let foV = UIView()
    foV.backgroundColor = UIColor(red: 255/255, green: 204/255, blue: 92/255, alpha: 1.0)
    
    let views = [fV, sV, tV, foV]
    
    // Create a model which has the information to present
    let model = LAMenuModel(images: [UIImage(named: "home"), UIImage(named: "trending"), UIImage(named: "subscriptions"), UIImage(named: "account")], backgroundColor: .white, barColor: .black, tintColorWhenSelected: .black, tintColorWhenDiselected: .lightGray, views: views)
    
    // Create LAMenuView and add to your view
    let menuView = LAMenuView()
    
    // Set the model
    menuView.model = model
  
    view.addSubview(menuView)
    
    view.addConstraintsWithFormat(format: "H:|[v0]|", view: menuView)
    view.addConstraintsWithFormat(format: "V:|[v0]|", view: menuView)
  }
  
  func configurateNavigationBar() {
    navigationController?.navigationBar.isTranslucent = false
    UINavigationBar.appearance().shadowImage = UIImage()
    UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
  }
}
