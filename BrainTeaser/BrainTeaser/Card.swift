//
//  Card.swift
//  BrainTeaser
//
//  Created by Ngo Thai on 5/29/16.
//  Copyright © 2016 Thái Bô Lão. All rights reserved.
//

import UIKit

class Card: UIView {

    let shapes = ["shape1", "shape2", "shape3"]
    
    var currentShape: String!
    
    @IBOutlet var shapeImage: UIImageView!
    
    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            setupView()
        }
    }
    override func awakeFromNib() {
        setupView()
        selectShape()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
        
    }
    
    
    func setupView() {
         self.layer.cornerRadius = cornerRadius
        self.layer.shadowOpacity = 0.8
        self.layer.shadowRadius = 5.0
        self.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        self.layer.shadowColor = UIColor(red: 157/255, green: 157/255, blue: 157/255, alpha: 1.0).CGColor
        self.setNeedsLayout()
    }
    
    func selectShape () {
        currentShape = shapes[Int(arc4random_uniform(3))]
        shapeImage.image = UIImage(named: currentShape)
    }

}
