//
//  ViewController.swift
//  FoodShack
//
//  Created by Ngo Thai on 5/30/16.
//  Copyright © 2016 TBLStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let burgerBtn = UIButton()
    let pizzaBtn = UIButton()
    let sandwichBtn = UIButton()
    let tacoBtn = UIButton()
    let orderNowBtn = UIButton()
    
    let selectedImageThumbImg = UIImageView(image: UIImage(named: "burger"))
    let topViewHolder = UIView()
    let mainThumbViewHolder = UIView()
    let buttonViewHolder = UIView()
    let bottomViewHolder = UIView()
    
    let topThumbBtn = UIButton()
    let topTitleLbl = UILabel()
    
    var views = Dictionary<String, AnyObject>()
    var constraints = [NSLayoutConstraint]()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        self.view.backgroundColor = UIColor.purpleColor()
        self.topViewHolder.backgroundColor = UIColor.whiteColor()
        self.mainThumbViewHolder.backgroundColor = UIColor(red: 220/255, green: 224/255, blue: 210/255, alpha: 1)
        self.buttonViewHolder.backgroundColor = UIColor(red: 242/255, green: 241/255, blue: 239/255, alpha: 1)
        self.bottomViewHolder.backgroundColor = UIColor(red: 39/255, green: 61/255, blue: 72/255, alpha: 1)
        
        self.topThumbBtn.setImage(UIImage(named: "burger"), forState: .Normal)
        self.topTitleLbl.text = "FOOD SHACK"
        self.topTitleLbl.textColor = UIColor(red: 39/255, green: 61/255, blue: 72/255, alpha: 1)
        
        
        self.topViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.mainThumbViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.bottomViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.buttonViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.topThumbBtn.translatesAutoresizingMaskIntoConstraints = false
        self.topTitleLbl.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(topViewHolder)
        self.view.addSubview(mainThumbViewHolder)
        self.view.addSubview(buttonViewHolder)
        self.view.addSubview(bottomViewHolder)
        
        self.topViewHolder.addSubview(topThumbBtn)
        self.topViewHolder.addSubview(topTitleLbl)
        
        self.views["topViewHolder"] = topViewHolder
        self.views["mainThumbViewHolder"] = mainThumbViewHolder
        self.views["buttonViewHolder"] = buttonViewHolder
        self.views["bottomViewHolder"] = bottomViewHolder
        self.views["topThumbBtn"] = topThumbBtn
        self.views["topTitleLbl"] = topTitleLbl
        
        
        setConstraints()
    }
    
    func setConstraints() {
        /** TOP VIEW HOLDER **/
        addConstraint("V:|-[topViewHolder(50)]-0-[mainThumbViewHolder]")
        addConstraint("H:|-0-[topViewHolder]-0-|")
        
        /** MAIN VIEW HOLDER **/
        addConstraint("V:[mainThumbViewHolder(<=250@250)]")
        addConstraint("V:[mainThumbViewHolder(>=100@250)]")
        addConstraint("H:|-0-[mainThumbViewHolder(==topViewHolder)]-0-|")
        
        /** MAIN BUTTON HOLDER **/
        addConstraint("V:[mainThumbViewHolder]-0-[buttonViewHolder(<=200)]-0-[bottomViewHolder]")
        addConstraint("V:[buttonViewHolder(>=100)]")
        addConstraint("H:|-0-[buttonViewHolder(==mainThumbViewHolder)]-0-|")
        
        /** BOTTOM VIEW HOLDER **/
        addConstraint("V:[bottomViewHolder(50)]-|")
        addConstraint("H:|-0-[bottomViewHolder(buttonViewHolder)]-0-|")
        
        /** TOP THUMB BUTTOM **/
        addConstraint("V:|-5-[topThumbBtn(40)]")
        addConstraint("H:|-5-[topThumbBtn(40)]")
        
        /** TOP TITLE LABEL **/
        addConstraint("V:|-5-[topTitleLbl(40)]")
        addConstraint("H:[topThumbBtn]-10-[topTitleLbl(>=50)]")
        
        NSLayoutConstraint.activateConstraints(self.constraints)
    }
    
    func addConstraint(format: String) {
        let newConstraint = NSLayoutConstraint.constraintsWithVisualFormat(format, options: [], metrics: nil, views: views)
        self.constraints += newConstraint
    }
}



























