//
//  ListCell.swift
//  SomeJunk
//
//  Created by Ngo Thai on 6/3/16.
//  Copyright © 2016 TBLStudio. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var thumb: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var details: UILabel!
    
    func configureCell(item: Item) {
        title.text = item.title
        price.text = "$\(item.price!)"
        details.text = item.details
    }

}
