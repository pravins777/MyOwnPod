//
//  MyHelper.swift
//  MyTaks
//
//  Created by Namrata Gursale on 30/01/18.
//  Copyright © 2018 TT. All rights reserved.
//

import Foundation
import UIKit

class MyHelper
{
    
    func displayAlert(title: String , msg: String ){
        print("Hello \(title) : welcome to the new world \(msg)")
        
    }
}
extension UIButton {
    
    func setAsFirstButton(_ bordered: Bool = false, backgroundColor : UIColor = UIColor.gray, titleColor: UIColor = UIColor.white, title: String = "", roundedCorner: Bool = false, font: UIFont = UIFont.systemFont(ofSize: 16.0), isEnabled: Bool = true) {
        
        self.createButton(bordered, backgroundColor : backgroundColor, titleColor: titleColor, title: title, roundedCorner: roundedCorner, font: font, isEnabled: isEnabled)
    }
    func createButton(_ bordered: Bool, backgroundColor : UIColor, titleColor: UIColor, title: String, roundedCorner: Bool, font: UIFont, isEnabled: Bool) {
        
        var titleColor = titleColor
        self.backgroundColor = backgroundColor
        
        if bordered {
            self.layer.borderColor = backgroundColor.cgColor
            self.layer.borderWidth = 1
            titleColor = backgroundColor
            self.backgroundColor = UIColor.clear
        }
        else {
            print("setBackgroundImage")
           // self.setBackgroundImage(UIImage().imageWithColor(backgroundColor), for: UIControlState())
            //self.setBackgroundImage(UIImage().imageWithColor(backgroundColor.withAlphaComponent(0.7)), for: UIControlState.disabled)
        }
        
        if roundedCorner {
            self.layoutIfNeeded()
            self.layer.cornerRadius = 5.0
            self.clipsToBounds = true
        }
        
        self.titleLabel?.font = font
        self.setTitle(title.capitalized, for: UIControlState.normal)
        
        self.setTitleColor(titleColor, for: UIControlState.normal)
        self.setTitleColor(titleColor, for: UIControlState.selected)
        self.setTitleColor(titleColor, for: UIControlState.highlighted)
        self.isEnabled = isEnabled
    }
}
