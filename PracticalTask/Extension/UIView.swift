//
//  Extintion.swift
//  ExamPrepHub
//
//  Created by Venkatesh Savarala on 11/12/21.
//

import UIKit
extension UIView {
    @IBInspectable var cornerRadiuss: CGFloat {
        get {
            return self.layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            clipsToBounds = newValue > 0
            
        }
    }
    @IBInspectable var borderWidth:CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    @IBInspectable var borderColor:UIColor? {
        set {
            layer.borderColor = newValue!.cgColor
        }
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor:color)
            }
            else {
                return nil
            }
        }
    }
}
// MARK: - APPEARANCE
extension UIView {
    
    /**
     Set views corner radius and border color
     */
    func viewBorder(withRadius radius: CGFloat, width: CGFloat, color:UIColor) {
        self.layer.cornerRadius = radius
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
        self.clipsToBounds = true
    }
    
    /**
     Change background color programatically
     */
    func viewBackgroundColor(withColor color: UIColor) {
        self.backgroundColor = color
    }
    
    /**
     Add shadow to view programatically
     */
    func viewShadow(withColor color: UIColor, opacity: Float, radius: CGFloat) {
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = radius
    }
    
    /**
     Add Anchor to view programatically
     */
    
    func anchor(top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, trailing: NSLayoutXAxisAnchor?,centerXAxis: NSLayoutXAxisAnchor?,centerYAxis: NSLayoutYAxisAnchor?, padding: UIEdgeInsets = .zero, size: CGSize = .zero , centerXAdjustment: CGFloat = 0 ,centerYAdjustment: CGFloat = 0) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        
        if let leading = leading {
            self.leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        }
        
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        }
        
        if let trailing = trailing {
            self.trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        }
        if let centerXAxis = centerXAxis {
            self.centerXAnchor.constraint(equalTo: centerXAxis, constant: centerXAdjustment).isActive = true
        }
        
        if let centerYAxis = centerYAxis {
            self.centerYAnchor.constraint(equalTo: centerYAxis, constant: centerYAdjustment).isActive = true
        }
        
        if size.width != 0 {
            self.widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        
        if size.height != 0 {
            self.heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
        
    }
    
    /**
     Fill View To Parent view programatically
     */
    func fillSuperview(padding: UIEdgeInsets = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        if let superviewTopAnchor = superview?.topAnchor {
            topAnchor.constraint(equalTo: superviewTopAnchor, constant: padding.top).isActive = true
        }
        
        if let superviewBottomAnchor = superview?.bottomAnchor {
            bottomAnchor.constraint(equalTo: superviewBottomAnchor, constant: -padding.bottom).isActive = true
        }
        
        if let superviewLeadingAnchor = superview?.leadingAnchor {
            leadingAnchor.constraint(equalTo: superviewLeadingAnchor, constant: padding.left).isActive = true
        }
        
        if let superviewTrailingAnchor = superview?.trailingAnchor {
            trailingAnchor.constraint(equalTo: superviewTrailingAnchor, constant: -padding.right).isActive = true
        }
    }
    
    func roundTopCorners(radius:CGFloat){
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
        if #available(iOS 11.0, *) {
            self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        } else {
            // Fallback on earlier versions
        }
    }
    
    func setupBorderColor(radius:CGFloat,borderWidth:CGFloat,colour:UIColor)  {
        self.layer.cornerRadius = radius
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = colour.cgColor
        self.clipsToBounds = true
    }

//    func showLoader(size: CGSize = CGSize(width: 60, height: 60)) {
//        // Check Loader Exixtance
//        var loaderIsPresent = false
//        for subView in self.subviews{
//            if subView is SBCircleAnimation {
//                loaderIsPresent = true
//            }
//        }
//        // Show Loader
//        if !loaderIsPresent{
//            let loader = SBCircleAnimation(frame: CGRect(x: (self.frame.width - size.width) / 2, y: (self.frame.height - size.height) / 2, width: size.width, height: size.height))
//            self.addSubview(loader)
//            self.bringSubviewToFront(loader)
//            loader.animateX()
//        }
//    }
    
//    @objc func hideLoader() {
//        for subView in self.subviews{
//            if let loader = subView as? SBCircleAnimation {
//                loader.removeAnimations()
//                loader.removeFromSuperview()
//            }
//        }
//    }
    
}


