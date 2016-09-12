//
//  ViewController.swift
//  listr
//
//  Created by Eric Giannini on 8/31/16.
//  Copyright © 2016 Unicorn Mobile, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var itemTextField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    let testOfCustomizedSlot = ["slot1", "slot2", "slot3"]
    
    let groceryItem = GroceryItem()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "customizedSlot")
        
        tableView.dataSource = groceryItem
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func addButtonPressed(sender: UIButton) {
        
        guard let text = itemTextField.text else {
            return
        }
        
        groceryItem.addItem(text)
        tableView.reloadData() 
    }
}

