//
//  Appearance.swift
//  MCKPinController
//
//  Created by Himal Madhushan on 11/28/18.
//  Copyright © 2018 Himal Madhushan. All rights reserved.
//

import UIKit
import Foundation

public enum MCKLayerType {
    case square, rounded
}

public struct MCKAppearance {
    
    public var dots = MCKDotAppearance()
    
    public var general = MCKGeneralAppearance()
    
    public var numberPad = MCKNumberPadAppearance()
    
    public init() { }
    
}


public struct MCKGeneralAppearance {
    
    public var backgroundColor: UIColor = UIColor(white: 0, alpha: 0.5)
    
    /// Default is set to `UIBlurEffect.Style.dark`.
    public var blurEffect: UIBlurEffect = UIBlurEffect(style: .dark)
    
    public var imageTint: UIColor = .white
    
    public init() { }
    
}


public struct MCKNumberPadAppearance {
    
    public var fillingColor: UIColor = .clear
    
    public var borderColor: UIColor = .white
    
    /// Changes the color of number (1...0 and backspace)
    public var textColor: UIColor = .white
    
    public var borderWidth: CGFloat = 1
    
    /// Default is set to `rounded`.
    public var layerType: MCKLayerType = .rounded
    
    public init() { }
    
}


public struct MCKDotAppearance {
    
    public var fillingColor: UIColor = .white
    public var borderColor: UIColor = UIColor(white: 1, alpha: 1)
    
    /// Default is set to `rounded`.
    public var layerType: MCKLayerType = .rounded
    
    public init() { }
}
