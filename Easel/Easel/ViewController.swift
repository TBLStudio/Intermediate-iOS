//
//  ViewController.swift
//  Easel
//
//  Created by Thái Bô Lão on 5/30/16.
//  Copyright © 2016 Thái Bô Lão. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonsStackView: UIStackView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var lastPoint = CGPoint.zero

    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.appBecameActive), name: UIApplicationDidBecomeActiveNotification, object: nil)
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBarHidden = true
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first {
            let point = touch.locationInView(self.imageView)
            lastPoint = point
        }
        
        self.buttonsStackView.hidden = true
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        if let touch = touches.first {
            let point = touch.locationInView(self.imageView)
            UIGraphicsBeginImageContext(self.imageView.frame.size)
            let context = UIGraphicsGetCurrentContext()
            self.imageView.image?.drawInRect(CGRect(x: 0, y: 0, width: self.imageView.frame.size.width, height: self.imageView.frame.size.height))
            CGContextMoveToPoint(context, self.lastPoint.x, self.lastPoint.y)
            CGContextAddLineToPoint(context, point.x, point.y)
            CGContextStrokePath(context)
            self.imageView.image = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            self.lastPoint = point
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.buttonsStackView.hidden = false
        
    }
    
    func appBecameActive() {
        print("App Became Active")
    }



}

