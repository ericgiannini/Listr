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
    
    
}
    