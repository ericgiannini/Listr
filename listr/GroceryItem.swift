//
//  GroceryItem.swift
//  listr
//
//  Created by Eric Giannini on 9/12/16.
//  Copyright © 2016 Unicorn Mobile, LLC. All rights reserved.
//

import UIKit

class GroceryItem: NSObject {
    
    // A property for NSFileManager to supply user's document directories
    private let fileURL: NSURL = {
    
        let documentDirectoryOfURLs = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        
        let documentDirectoryURL = documentDirectoryOfURLs.first!
        
        return documentDirectoryURL.URLByAppendingPathComponent("groceryItem.item")
        
    }()
    
    // An empty array of type String for GroceryItems
    private var items: [String] = []
    
    // An explicit initializer
    
    override init() {
        super.init()
        loadItems()
    }
    
    // A function for saving grocery items
    func saveItems() {
    
        let itemsArray = items as NSArray
        
        print("Saving items to \(fileURL)")
        
        if !itemsArray.writeToURL(fileURL, atomically: true) {
            print("Could not save grocery item")
        }
        
    }

    // A function for loading the array of GroceryItems
    func loadItems() {
        if let itemsArray = NSArray(contentsOfURL: fileURL) as? [String] {
            items = itemsArray
        }
    }
    
    
    // A function for adding GroceryItems to the list
    func addItem(item: String) {
        items.append(item)
        saveItems()
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
    