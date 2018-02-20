//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Michael Vilabrera on 2/1/18.
//  Copyright © 2018 Michael Vilabrera. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject, Codable {
    var text = ""
    var checked = false
    
    var dueDate = Date()
    var shouldRemind = false
    var itemID: Int
    
    override init() {
        itemID = DataModel.nextChecklistItemID()
        super.init()
    }
    
    func toggleChecked() {
        checked = !checked
    }
}

