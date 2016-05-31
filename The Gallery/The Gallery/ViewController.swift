//
//  ViewController.swift
//  The Gallery
//
//  Created by Thái Bô Lão on 5/31/16.
//  Copyright © 2016 Thái Bô Lão. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var gallery = [Art]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
        updateGallery()
        
        if gallery.count == 0 {
            createArt("Horse", productIdentifier: "1", imageName: "horse.jpeg", purchased: true)
            createArt("Bird", productIdentifier: "2", imageName: "bird.jpeg", purchased: false)
            createArt("Baby", productIdentifier: "3", imageName: "baby.jpeg", purchased: false)
            updateGallery()
            self.collectionView.reloadData()
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func restorePressed(sender: AnyObject) {
    }
    
    
}


extension ViewController: UICollectionViewDelegate {
}


extension ViewController: UICollectionViewDataSource {
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gallery.count
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("artCell", forIndexPath: indexPath) as! ArtCollectionViewCell
        let art = gallery[indexPath.row]
        
        cell.imageView.image = UIImage(named: art.imageName!)
        cell.titleLbl.text = art.title
        
        for subview in cell.imageView.subviews {
            subview.removeFromSuperview()
        }
        
        if art.purchased?.boolValue == true {
            cell.purchasedLabel.hidden = true
        } else {
            cell.purchasedLabel.hidden = false
            let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
            let blurView = UIVisualEffectView(effect: blurEffect)
            cell.layoutIfNeeded()
            blurView.frame = cell.imageView.bounds
            cell.imageView.addSubview(blurView)
        }
        
        return cell
    }
}


extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: self.collectionView.bounds.size.width - 80, height: self.collectionView.bounds.size.height - 40)
    }
}

//MARK:- CoreData -
extension ViewController {
    func updateGallery() {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = appDelegate.managedObjectContext
        let fetch = NSFetchRequest(entityName: "Art")
        do {
            let artPieces = try context.executeFetchRequest(fetch)
            self.gallery = artPieces as! [Art]
        } catch {}
    }
    
    func createArt(title: String, productIdentifier: String,  imageName: String, purchased: Bool) {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = appDelegate.managedObjectContext
        if let entity = NSEntityDescription.entityForName("Art", inManagedObjectContext: context) {
            let art = NSManagedObject(entity: entity, insertIntoManagedObjectContext: context) as! Art
            art.title = title
            art.productIdentifier = productIdentifier
            art.imageName = imageName
            art.purchased = NSNumber(bool: purchased)
        }
        
        do {
            try context.save()
        } catch{}

    }
}


























