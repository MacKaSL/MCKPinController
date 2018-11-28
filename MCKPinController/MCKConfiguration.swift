//
//  MCKConfiguration.swift
//  MCKPinController
//
//  Created by Himal Madhushan on 11/28/18.
//  Copyright © 2018 Himal Madhushan. All rights reserved.
//

import UIKit

public class MCKConfiguration {
    
    
    
    /// Sets an image between digit pad and top dots
    public var image: UIImage? {
        didSet {
            self.imageChanged?()
        }
    }
    
    public var numberOfDigits = 4
    
    /// Configure the appearance
    public var appearance = MCKAppearance()
    
    /// Listens to change of image variable
    public var imageChanged: (()->Void)?
    
    /// When reset is called, top 4 dots will shake to indicate whether the attempt is success or not. Defaule is set to `false`.
    public var shouldShakeOnReset = false
    
    /// Tells whether to animate the container view or not. Defaule is set to `true`.
    public var shouldAnimatePresentation = true
    
    /// Triggers everytime a digit is tapped until the code is completed and other way around also.
    public var pinChanged: ((String)->Void)?
    
    /// Will be triggered when 4 digit code is completed
    public var completion: ((String)->Void)?
    
    /// Type of UIModalTransitionStyle. default is set to `.crossDissolve`
    var transitionStyle: UIModalTransitionStyle = .crossDissolve
    
    /// Type of UIModalPresentationStyle. default is set to `.overFullScreen`
    var presentationStyle: UIModalPresentationStyle = .overFullScreen
    
    public init() {
        
    }
}
