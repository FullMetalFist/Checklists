//
//  Checklist.swift
//  Checklists
//
//  Created by Michael Vilabrera on 2/11/18.
//  Copyright © 2018 Michael Vilabrera. All rights reserved.
//

import UIKit

class Checklist: NSObject {
    var name = ""
    var items = [ChecklistItem]()
    
    init(name: String) {
        self.name = name
        super.init()
    }
}
