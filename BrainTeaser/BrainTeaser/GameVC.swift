//
//  GameVC.swift
//  BrainTeaser
//
//  Created by Ngo Thai on 5/29/16.
//  Copyright © 2016 Thái Bô Lão. All rights reserved.
//

import UIKit

class GameVC: UIViewController {
    
    @IBOutlet weak var noBtn: CustomButton!
    
    @IBOutlet weak var yesBtn: CustomButton!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    var currentCard: Card!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentCard = createCardFromNib()
        currentCard.center = AnimationEngine.screenCenterPosition
        self.view.addSubview(currentCard)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func yesPressed(sender: AnyObject) {
        let button: UIButton = sender as! UIButton
        if button.titleLabel?.text == "YES" {
            checkAnswer()
        } else {
            titleLbl.text = "Does this card match the previous?"
        }
        showNextCard()
        
    }
    
    
    @IBAction func noPressed(sender: AnyObject) {
        checkAnswer()
        showNextCard()
    }
    
    func checkAnswer() {
        
        
    }
    
    func showNextCard() {
        if let current = currentCard {
            let cardToRemove = current
            currentCard = nil
            AnimationEngine.animateToPosition(cardToRemove, position: AnimationEngine.offScreenLeftPosition, completion: { (anim, finished) in
                cardToRemove.removeFromSuperview()
            })
        }
        
        if let next = createCardFromNib() {
            next.center = AnimationEngine.offScreenRightPosition
            self.view.addSubview(next)
            currentCard = next
            if noBtn.hidden {
                noBtn.hidden = false
                yesBtn.setTitle("YES", forState: UIControlState.Normal)
            }
            AnimationEngine.animateToPosition(next, position: AnimationEngine.screenCenterPosition, completion: { (anim, finished) in
                
            })
        }
    }
    
    func createCardFromNib() -> Card? {
        return NSBundle.mainBundle().loadNibNamed("Card", owner: self, options: nil)[0] as? Card
    }


}












