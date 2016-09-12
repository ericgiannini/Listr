//
//  GroceryItem.swift
//  listr
//
//  Created by Eric Giannini on 9/12/16.
//  Copyright © 2016 Unicorn Mobile, LLC. All rights reserved.
//

import UIKit

class GroceryItem: NSObject {
    
    // An empty array of type String for GroceryItems
    private var items: [String] = []
    

    // A function for adding GroceryItems to the list
    func addItem(item: String) {
        items.append(item)
    }
    
}

extension GroceryItem : UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("customizedSlot", forIndexPath: indexPath)
        
        let item = items[indexPath.row]
        
        cell.textLabel!.text = item
    
        return cell
    }
    

    
}
    