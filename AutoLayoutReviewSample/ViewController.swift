//
//  ViewController.swift
//  AutoLayoutReviewSample
//
//  Created by Francisco José A. C. Souza on 22/04/15.
//  Copyright (c) 2015 Francisco José A. C. Souza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var constraintTopPurppleView: NSLayoutConstraint!
    @IBOutlet weak var purpleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func coreAnimation(sender: AnyObject) {
        
        let animation = CABasicAnimation(keyPath: "position.y")
        animation.fromValue = purpleView.layer.position.y
        animation.toValue = purpleView.layer.position.y + 350.0
        animation.duration = 1.0
//        animation.autoreverses = true
        
        constraintTopPurppleView.constant += 350
        
        purpleView.layer.addAnimation(animation, forKey: nil)
        
    }

    @IBAction func uikit(sender: AnyObject) {
        
        
    }
}

