//
//  Player.swift
//  PlyerScoop
//
//  Created by Ngo Thai on 5/29/16.
//  Copyright © 2016 TBLStudio. All rights reserved.
//

import UIKit


struct Player {
    var name = ""
    var age = 0
    var college = ""
    var height = ""
    var image = UIImage()
    var backgroundColor = UIColor()
    var textColor1 = UIColor()
    var textColor2 = UIColor()
    
    static func createPlayers() -> [Player]{
        let por = Player(name: "Kristaps Porzingis", age: 20, college:"None", height:"7' 3\"", image: UIImage(named:"por.jpg")!, backgroundColor: UIColor(red: 0.192, green: 0.290, blue: 0.608, alpha: 1.00), textColor1: UIColor.whiteColor(), textColor2: UIColor(red: 0.835, green: 0.357, blue: 0.133, alpha: 1.00))
        
        let dam = Player(name: "Damian Lillard", age: 25, college: "Weber State", height: "6' 3\"", image: UIImage(named: "dam.jpg")!, backgroundColor: UIColor.blackColor(), textColor1: UIColor.redColor(), textColor2: UIColor.whiteColor())
        
        let sheed = Player(name: "Rasheed Wallace", age: 41, college: "North Carolina", height: "6' 11\"", image: UIImage(named: "sheed.jpg")!, backgroundColor: UIColor(red: 0.106, green: 0.478, blue: 0.933, alpha: 1.00), textColor1: UIColor(red: 0.835, green: 0.165, blue: 0.176, alpha: 1.00), textColor2: UIColor.whiteColor())
        
        let jimbo = Player(name: "Jimmer Fredette", age: 26, college: "BYU", height: "6' 2\"", image: UIImage(named: "jimbo.jpg")!, backgroundColor: UIColor(red: 0.000, green: 0.161, blue: 0.322, alpha: 1.00), textColor1: UIColor.whiteColor(), textColor2: UIColor(red: 0.776, green: 0.655, blue: 0.478, alpha: 1.00))
        
        let adam = Player(name: "Adam Morrison", age: 31, college: "Gonzaga", height: "6' 8\"", image: UIImage(named: "adam.jpg")!, backgroundColor: UIColor(red: 0.149, green: 0.204, blue: 0.424, alpha: 1.00), textColor1: UIColor(red: 0.682, green: 0.090, blue: 0.125, alpha: 1.00), textColor2: UIColor.whiteColor())
        
        return [por, dam, sheed, jimbo, adam]
        
    }
    
}