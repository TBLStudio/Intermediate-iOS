//
//  ViewController.swift
//  BrainTeaser
//
//  Created by Thái Bô Lão on 5/28/16.
//  Copyright © 2016 Thái Bô Lão. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet var emailContraint: NSLayoutConstraint!
  
    @IBOutlet var passwordConstraint: NSLayoutConstraint!

    @IBOutlet var loginContraint: NSLayoutConstraint!
    
    var animEngine: AnimationEngine!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.animEngine = AnimationEngine(constraints: [emailContraint, passwordConstraint, loginContraint])
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.animEngine.animateOnScreen(1)
    }


}

