//
//  ViewController.swift
//  Checklists
//
//  Created by Cenk on 11.01.2018.
//  Copyright © 2018 cenksenyuz. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    var items : [ChecklistItem]
    
    required init?(coder aDecoder: NSCoder) {
        
        items = [ChecklistItem] ()
        
        let row0Item = ChecklistItem()
        row0Item.text = "Walk the dog"
        row0Item.checked = false
        items.append(row0Item)
        
        let row1Item = ChecklistItem()
        row1Item.text = "Brush my teeht"
        row1Item.checked = false
        items.append(row1Item)
        
        let row2Item = ChecklistItem()
        row2Item.text = "Learn iOS development"
        row2Item.checked = true
        items.append(row2Item)

        let row3Item = ChecklistItem()
        row3Item.text = "Basketball practice"
        row3Item.checked = false
        items.append(row3Item)

        let row4Item = ChecklistItem()
        row4Item.text = "Eat ice cream"
        row4Item.checked = false
        items.append(row4Item)
        
        let row5Item = ChecklistItem()
        row5Item.text = "Buy some healty food"
        row5Item.checked = false
        items.append(row5Item)
        
        let row6Item = ChecklistItem()
        row6Item.text = "Wash your car"
        row6Item.checked = false
        items.append(row6Item)
        
        let row7Item = ChecklistItem()
        row7Item.text = "Goto bad early to sleep"
        row7Item.checked = false
        items.append(row7Item)
        
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath){
            
            let item = items[indexPath.row]
            item.toggleChecked()
            
            configureCheckmark(for: cell, with: item)
        }
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        let item = items[indexPath.row]
        
        configureText(for: cell, with: item)
        configureCheckmark(for: cell, with: item)
        return cell
    }
    func configureText (for cell:UITableViewCell, with item: ChecklistItem){
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = item.text
    }
    
    func configureCheckmark (for cell: UITableViewCell, with item: ChecklistItem){
 
        if item.checked {
            cell.accessoryType = .checkmark
        }else {
            cell.accessoryType = .none
        }
    }
 
//End of Class definition
}

