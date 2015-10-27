//
//  ViewController.swift
//  SurveyApp
//
//  Created by Eude Kinsley Lesperance on 10/26/15.
//  Copyright © 2015 Learning. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var surveyTableView: UITableView!
    var json: NSArray = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.surveyTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        json = getData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return json.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        cell.textLabel?.text = json[indexPath.row]["title"] as? String
        return cell
    }
    
    func getData() -> NSArray {
        let data: NSData = NSData(contentsOfURL: NSURL(string: "http://www.mocky.io/v2/560920cc9665b96e1e69bb46")!)!
        return try! NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers) as! NSArray
    }


}

