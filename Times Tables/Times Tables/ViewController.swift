//
//  ViewController.swift
//  Times Tables
//
//  Created by Ryan Walker on 9/2/15.
//  Copyright (c) 2015 Ryan Walker. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet var sliderText: UILabel!
    @IBOutlet var sliderValue: UISlider!
   
    @IBOutlet var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sliderText.text = String(Int(sliderValue.value))
    }
    
    @IBAction func sliderMoved(sender: AnyObject) {
        table.reloadData()
        sliderText.text = String(Int(sliderValue.value))
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        let val = Int(sliderValue.value) * (indexPath.row + 1)
        cell.textLabel?.text = "\(val)"
        return cell
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

