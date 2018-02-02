//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Cenk on 1.02.2018.
//  Copyright © 2018 cenksenyuz. All rights reserved.
//

import Foundation

class ChecklistItem {
    var text = ""
    var checked = false
    
    func toggleChecked(){
        checked = !checked
    }
}
