//
//  PlayerDetailVC.swift
//  PlyerScoop
//
//  Created by Ngo Thai on 5/30/16.
//  Copyright © 2016 TBLStudio. All rights reserved.
//

import UIKit

class PlayerDetailVC: UIViewController {
    
    var player = Player()
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLbl: UILabel!

    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var heightLbl1: UILabel!
    
    @IBOutlet weak var ageLbl: UILabel!
    @IBOutlet weak var ageLbl1: UILabel!
    
    @IBOutlet weak var collegeLbl: UILabel!
    @IBOutlet weak var collegeLbl1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = player.name
        nameLbl.textColor = player.textColor2
        self.view.backgroundColor = player.backgroundColor
        self.imageView.image = player.image
        
        self.heightLbl1.textColor = player.textColor1
        self.heightLbl.textColor = player.textColor2
        self.heightLbl.text = player.height
        
        self.ageLbl1.textColor = player.textColor1
        self.ageLbl.textColor = player.textColor2
        self.ageLbl.text = "\(player.age)"
        
        self.collegeLbl1.textColor = player.textColor1
        self.collegeLbl.textColor = player.textColor2
        self.collegeLbl.text = player.college
        
        self.imageView.layer.cornerRadius = self.imageView.frame.size.width/2
        self.imageView.clipsToBounds = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
