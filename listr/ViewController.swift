//
//  ViewController.swift
//  listr
//
//  Created by Eric Giannini on 8/31/16.
//  Copyright © 2016 Unicorn Mobile, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var tableView: UITableView!
    
    let testOfCustomizedSlot = ["slot1", "slot2", "slot3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        tableViewFromStoryboard.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testOfCustomizedSlot.count
    }


    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("customizedSlot", forIndexPath: indexPath) 
        
        cell.textLabel?.text = testOfCustomizedSlot[indexPath.item]
        
        return cell
    }

    
}

