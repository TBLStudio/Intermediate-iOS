//
//  ItemType+CoreDataProperties.swift
//  SomeJunk
//
//  Created by Ngo Thai on 6/3/16.
//  Copyright © 2016 TBLStudio. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension ItemType {

    @NSManaged var type: String?
    @NSManaged var item: NSSet?

}
