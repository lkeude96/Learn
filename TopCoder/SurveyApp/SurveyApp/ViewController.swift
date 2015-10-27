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
    
    
    var data: [NSDictionary] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.surveyTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        let dataPath = NSBundle.mainBundle().pathForResource("data", ofType: "plist")
        data = NSArray(contentsOfFile: dataPath!)! as! [NSDictionary]
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) 
        
        cell.textLabel?.text = data[indexPath.row]["title"] as? String
        return cell
    }


}

