//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Michael Vilabrera on 2/1/18.
//  Copyright © 2018 Michael Vilabrera. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}

