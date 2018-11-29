//
//  MCKPinViewController.swift
//  MCKPinController
//
//  Created by Himal Madhushan on 11/27/18.
//  Copyright © 2018 Himal Madhushan. All rights reserved.
//

import UIKit

// MARK: -
class MCKPinViewController: UIViewController {

    @IBOutlet private weak var view1: UIView!
    @IBOutlet private weak var view2: UIView!
    @IBOutlet private weak var view3: UIView!
    @IBOutlet private weak var view4: UIView!
    @IBOutlet private weak var view5: UIView!
    @IBOutlet private weak var view6: UIView!
    
    @IBOutlet private weak var blurView: UIVisualEffectView!
    @IBOutlet private weak var imageViewLogo: UIImageView!
    @IBOutlet private weak var dotsView: UIStackView!
    @IBOutlet private weak var containerView: UIStackView!
    @IBOutlet private weak var imageViewHeightConst: NSLayoutConstraint!
    
    private static var defaultContainerHeight: CGFloat = 140
    
    /// When reset is called, top 4 dots will shake to indicate whether the attempt is success or not. Defaule is set to false.
    private var shouldShakeOnReset: Bool {
        return configurations.shouldShakeOnReset
    }
    
    var configurations: MCKConfiguration!
    
    var dotAppearance: MCKDotAppearance {
        return configurations.appearance.dots
    }
    
    var numberPadAppearance: MCKNumberPadAppearance {
        return configurations.appearance.numberPad
    }
    
    var generalAppearance: MCKGeneralAppearance {
        return configurations.appearance.general
    }
    
    private var digitCount = 0 {
        didSet {
            updateUI(count: digitCount)
        }
    }
    
    private(set) var pin = "" {
        didSet {
            self.digitCount = pin.count
        }
    }
    
    private(set) var logoImage: UIImage?
    
    
    // MARK: - Private
    override public func viewDidLoad() {
        super.viewDidLoad()
        title = "Pin Controller"
        navigationController?.setNavigationBarHidden(true, animated: false)
        
        let bundle = Bundle(identifier: "org.cocoapods.MCKPinController")
        let ss = UIImage(named: "clear@2x", in: bundle, compatibleWith: nil)
        let backspaceButton = self.view.viewWithTag(-1) as! UIButton
        backspaceButton.setImage(ss, for: .normal)
        
        updateContainerViewHeight()
        configurations.imageChanged = {
            self.imageViewLogo.image = self.configurations.image
            self.updateContainerViewHeight()
        }
        
        // Configulations
        configureDotAppearance()
        configureNumberOfDots()
        configureGeneralAppearance()
        configureNumberPadAppearance()
        
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        if configurations.shouldAnimatePresentation {
            animateContainer()
        }
    }
    
    public override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    
    // MARK: - UI
    private func updateUI(count: Int) {
        for index in count...6 {
            let viewDigit = self.view.viewWithTag(index)
            viewDigit?.backgroundColor = .clear
        }
        guard count > 0 else { return }
        for index in 1...count {
            let viewDigit = self.view.viewWithTag(index)
            viewDigit?.backgroundColor = dotAppearance.fillingColor
        }
    }
    
    private func updateContainerViewHeight() {
        let newHeight: CGFloat = (configurations.image != nil) ? MCKPinViewController.defaultContainerHeight : (MCKPinViewController.defaultContainerHeight - 105)
        view.layoutIfNeeded()
        UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .beginFromCurrentState, animations: {
            self.imageViewHeightConst.constant = newHeight
            self.view.layoutIfNeeded()
        })
    }
    
    private func configureGeneralAppearance() {
        view.backgroundColor = generalAppearance.backgroundColor
        imageViewLogo.tintColor = generalAppearance.imageTint
        blurView.effect = generalAppearance.blurEffect
    }
    
    private func configureNumberPadAppearance() {
        
        for index in 11...20 {
            let button = self.view.viewWithTag(index) as! UIButton
            button.backgroundColor = numberPadAppearance.fillingColor
            button.tintColor = numberPadAppearance.textColor
            button.setTitleColor(numberPadAppearance.textColor, for: .normal)
            button.layer.borderWidth = numberPadAppearance.borderWidth
            button.layer.borderColor = numberPadAppearance.borderColor.cgColor
            switch numberPadAppearance.layerType {
            case .rounded:
                button.isBtnRounded = true
                
            case .square:
                button.layer.cornerRadius = 0
            }
        }
        
        let backspaceButton = self.view.viewWithTag(-1) as! UIButton
        backspaceButton.backgroundColor = numberPadAppearance.fillingColor
        backspaceButton.tintColor = numberPadAppearance.textColor
        backspaceButton.layer.borderWidth = numberPadAppearance.borderWidth
        backspaceButton.layer.borderColor = numberPadAppearance.borderColor.cgColor
        switch numberPadAppearance.layerType {
        case .rounded:
            backspaceButton.isBtnRounded = true
            
        case .square:
            backspaceButton.layer.cornerRadius = 0
        }
    }
    
    private func configureNumberOfDots() {
        for index in 1...configurations.numberOfDigits {
            let viewDigit = self.view.viewWithTag(index)
            viewDigit?.isHidden = false
        }
    }
    
    private func configureDotAppearance() {
        
        for index in 1...configurations.numberOfDigits {
            
            let viewDigit = self.view.viewWithTag(index)
            viewDigit?.layer.borderColor = dotAppearance.borderColor.cgColor
            
            switch dotAppearance.layerType {
            case .rounded:
                viewDigit?.isViewRounded = true
                
            case .square:
                viewDigit?.layer.cornerRadius = 0
            }
            
        }
    }
    
    // Shakes the top 4 dot views when then authentication failed
    private func shakeAnimate() {
        dotsView.transform = CGAffineTransform(translationX: 20, y: 0)
        UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 4, options: .beginFromCurrentState, animations: {
            self.dotsView.transform = .identity
        })
    }
    
    private func animateContainer() {
        containerView.alpha = 0
        containerView.transform = CGAffineTransform(translationX: 0, y: 200)
        UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .beginFromCurrentState, animations: {
            self.containerView.alpha = 1
            self.containerView.transform = .identity
        })
    }
    
}



// MARK: - Public
extension MCKPinViewController {
    func reset() {
        pin = ""
        updateUI(count: 0)
        if shouldShakeOnReset {
            shakeAnimate()
        }
    }
}



// MARK: - Actions
extension MCKPinViewController {
    
    @IBAction private func numberTapped(_ sender: UIButton) {
        
        if sender.tag == -1 {
            pin = String(pin.dropLast())
            configurations.pinChanged?(pin)
        } else {
            if pin.count < configurations.numberOfDigits {
                pin += (sender.titleLabel?.text)!
                configurations.pinChanged?(pin)
            }
            if pin.count == configurations.numberOfDigits {
                configurations.completion?(pin)
            }
        }
        
    }
    
}
