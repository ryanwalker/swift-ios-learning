//
//  FirstViewController.swift
//  To Do
//
//  Created by Ryan Walker on 9/5/15.
//  Copyright (c) 2015 Ryan Walker. All rights reserved.
//

import UIKit

var toDoListData = [String]()

class FirstViewController: UIViewController, UITableViewDelegate {

    @IBOutlet var toDoListTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if NSUserDefaults.standardUserDefaults().objectForKey("toDoListData") != nil {
            toDoListData = NSUserDefaults.standardUserDefaults().objectForKey("toDoListData") as! [String]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return toDoListData.count
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            toDoListData.removeAtIndex(indexPath.row)
            NSUserDefaults.standardUserDefaults().setObject(toDoListData, forKey: "toDoListData")
            toDoListTable.reloadData()
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        cell.textLabel?.text = toDoListData[indexPath.row]
        return cell
    }

    override func viewDidAppear(animated: Bool) {
        toDoListTable.reloadData()
    }


}

