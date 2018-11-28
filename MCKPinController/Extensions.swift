//
//  Extensions.swift
//  MCKPinController
//
//  Created by Himal Madhushan on 11/28/18.
//  Copyright © 2018 Himal Madhushan. All rights reserved.
//

import UIKit

extension  UIView {
    
    @IBInspectable
    var viewCornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable public var isViewRounded: Bool {
        set {
            layer.cornerRadius = frame.size.height / 2
        }
        get {
            return self.isViewRounded
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
}



// MARK: -
extension UIButton {
    
    @IBInspectable public var isBtnRounded : Bool {
        set {
            layer.cornerRadius = frame.size.height / 2
        }
        get {
            return self.isBtnRounded
        }
    }
    
    @IBInspectable public var btnCornerRadius : CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
}
