//
//  MCKPinNavController.swift
//  MCKPinController
//
//  Created by Himal Madhushan on 11/28/18.
//  Copyright © 2018 Himal Madhushan. All rights reserved.
//

import UIKit

public class MCKPinController {
    
    private static var pinController: MCKPinViewController = {
        let bundle = Bundle(identifier: "org.cocoapods.MCKPinController")
        let storyboard = UIStoryboard(name: "Storyboard", bundle: bundle)
        let pinController = storyboard.instantiateViewController(withIdentifier: "MCKPinViewController") as! MCKPinViewController
        return pinController
    }()
    
    
    /// Presents the MCKPinController
    ///
    /// - Parameters:
    ///   - configuration: MCKConfiguration
    ///   - viewController: Presenting view controller
    ///   - completion: (optioanl) completion: (() -> Void)?
    public static func present(with configuration: MCKConfiguration, in viewController: UIViewController,  completion: (() -> Void)? = nil) {
        
        let pinController = self.pinController
        pinController.configurations = configuration
        
        pinController.modalTransitionStyle = configuration.transitionStyle
        pinController.modalPresentationStyle = configuration.presentationStyle
        
        viewController.present(pinController, animated: true, completion: completion)
        
    }
    
    
    /// Dismissed the MCKPinController
    ///
    /// - Parameter completion: (optioanl) completion: (() -> Void)?
    public static func dismiss(completion: (() -> Void)? = nil) {
        self.pinController.dismiss(animated: true, completion: completion)
    }
    
    
    /// Resets top dots
    public static func reset() {
        self.pinController.reset()
    }
}
