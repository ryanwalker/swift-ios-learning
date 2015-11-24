//
//  ViewController.swift
//  Table View
//
//  Created by Ryan Walker on 8/31/15.
//  Copyright (c) 2015 Ryan Walker. All rights reserved.
//

import UIKit

//Added UITableViewDelegate
//I then had to ctrl + click from table view to the view controller in the storyboard and add datasource and delegate
//I also added 1 'Prototype Cell' on the Table View in the right side utilities menu
class ViewController: UIViewController, UITableViewDelegate {

    //Table data
    var cellContent = ["Bob", "Cal", "Joe", "Fred"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //This is from UITableViewDelegateProtocol, like overriding
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellContent.count
    }
    
    //This is pulled from UITableViewDelegate protocol and 'overridden'?
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = cellContent[indexPath.row]
        return cell
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

