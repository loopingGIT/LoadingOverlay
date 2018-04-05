//
//  LoadingOverlay.swift
//
//  Created by Luciano Perez Rocha on 03/02/17.
//  Copyright © 2017 Looping. All rights reserved.
//
import Foundation
import UIKit

open class LoadingOverlay{
    
    var overlayView : UIView!
    
    var activityIndicator : UIActivityIndicatorView!
    
    class var shared: LoadingOverlay {
        struct Static {
            static let instance: LoadingOverlay = LoadingOverlay()
        }
        return Static.instance
    }
    
    init(){
        self.overlayView = UIView()
        self.activityIndicator = UIActivityIndicatorView()
        
        let overlaySide = 70
        overlayView.frame = CGRect(x: 0, y: 0, width: overlaySide, height: overlaySide)
        overlayView.backgroundColor = UIColor.init(white: 0, alpha: 0.5)
        overlayView.clipsToBounds = true
        overlayView.layer.cornerRadius = 10
        overlayView.layer.zPosition = 1
        
        let activityIndicatorSide = 40
        activityIndicator.frame = CGRect(x: 0, y: 0, width: activityIndicatorSide, height: activityIndicatorSide)
        activityIndicator.center = CGPoint(x: overlayView.bounds.width / 2, y: overlayView.bounds.height / 2)
        activityIndicator.activityIndicatorViewStyle = .whiteLarge
        overlayView.addSubview(activityIndicator)
    }
    
    open func showOverlay(superView: UIView) {
        overlayView.center = superView.center
        superView.addSubview(overlayView)
        superView.bringSubview(toFront: overlayView)
        activityIndicator.startAnimating()
    }
    
    open func hideOverlay() {
        activityIndicator.stopAnimating()
        overlayView.removeFromSuperview()
    }
}
