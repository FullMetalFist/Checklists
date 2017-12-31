//
//  ViewController.swift
//  Checklists
//
//  Created by Michael Vilabrera on 12/27/17.
//  Copyright © 2017 Michael Vilabrera. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    let row0text = "Walk dog"
    let row1text = "Brush teeth"
    let row2text = "learn ios"
    let row3text = "soccer"
    let row4text = "ice cream"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        // kind of disappointed the text does not utilize 'switch' statements at this point
        switch indexPath.row % 5 {
        case 0:
            label.text = row0text
        case 1:
            label.text = row1text
        case 2:
            label.text = row2text
        case 3:
            label.text = row3text
        case 4:
            label.text = row4text
        default:
            label.text = "not sure"
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

