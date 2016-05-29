//
//  PlayersVC.swift
//  PlyerScoop
//
//  Created by Ngo Thai on 5/29/16.
//  Copyright © 2016 TBLStudio. All rights reserved.
//

import UIKit

class PlayersVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var players = Player.createPlayers()
    var selectedPlayer = Player()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.splitViewController?.preferredDisplayMode = .AllVisible
        self.splitViewController?.delegate = self

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let detailVC = segue.destinationViewController as! PlayerDetailVC
        detailVC.player = selectedPlayer
    }

}

extension PlayersVC: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let player = players[indexPath.row]
        let cell = UITableViewCell()
        cell.textLabel?.text = player.name
        return cell
    }

}

extension PlayersVC: UITableViewDelegate {
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        let player = self.players[indexPath.row]
        selectedPlayer = player
        self.performSegueWithIdentifier("moveToDetailSegue", sender: nil)
  
    }

}

extension PlayersVC: UISplitViewControllerDelegate {
    func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController, ontoPrimaryViewController primaryViewController: UIViewController) -> Bool {
        return true
    }

}
















