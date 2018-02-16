//
//  Checklist.swift
//  Checklists
//
//  Created by Michael Vilabrera on 2/11/18.
//  Copyright © 2018 Michael Vilabrera. All rights reserved.
//

import UIKit

class Checklist: NSObject, Codable {
    var name = ""
    var items = [ChecklistItem]()
    var iconName = "No Icon"
    
    init(name: String, iconName: String = "No Icon") {
        self.name = name
        self.iconName = iconName
        
        super.init()
    }
    
    func countUncheckedItems() -> Int {
        
        return items.reduce(0) { count,
            item in count + (item.checked ? 0 : 1)
        }
    }
}
