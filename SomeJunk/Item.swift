//
//  Item.swift
//  SomeJunk
//
//  Created by Ngo Thai on 6/3/16.
//  Copyright © 2016 TBLStudio. All rights reserved.
//

import Foundation
import CoreData


class Item: NSManagedObject {

    override func awakeFromInsert() {
        super.awakeFromInsert()
        self.created = NSDate()
    }

}
