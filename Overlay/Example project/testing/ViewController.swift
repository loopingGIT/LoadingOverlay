//
//  ViewController.swift
//  testing
//
//  Created by Luciano Perez Rocha on 03/02/17.
//  Copyright © 2017 Looping. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func showOverlayButtonTouched(sender:AnyObject){
        LoadingOverlay.shared.showOverlay(superView:self.view)
    }
    
    @IBAction func hideOverlayButtonTouched(sender:AnyObject){
        LoadingOverlay.shared.hideOverlay()
    }
}

