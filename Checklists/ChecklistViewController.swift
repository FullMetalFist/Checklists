//
//  ViewController.swift
//  Checklists
//
//  Created by Michael Vilabrera on 12/27/17.
//  Copyright © 2017 Michael Vilabrera. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {

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
            label.text = "Walk the dog"
        case 1:
            label.text = "Brush hair"
        case 2:
            label.text = "learn iOS development"
        case 3:
            label.text = "walk in park"
        case 4:
            label.text = "eat delicious food"
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

