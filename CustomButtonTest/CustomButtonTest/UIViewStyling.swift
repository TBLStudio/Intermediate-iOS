//
//  UIViewStyling.swift
//  CustomButtonTest
//
//  Created by Thái Bô Lão on 5/30/16.
//  Copyright © 2016 Thái Bô Lão. All rights reserved.
//

import UIKit

@IBDesignable
extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
        
    }
}