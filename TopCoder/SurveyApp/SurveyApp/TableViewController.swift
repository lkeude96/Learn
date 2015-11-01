//
//  TableViewController.swift
//  SurveyApp
//
//  Created by Eude Kinsley Lesperance on 10/29/15.
//  Copyright © 2015 Learning. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, UISearchDisplayDelegate, UISearchBarDelegate{

    @IBOutlet weak var surveyTableView: UITableView!
    var json = []
    var titleForSurvey = []
    var filtered = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.surveyTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        json = getData()
        titleForSurvey = json.valueForKey("title") as! NSArray
        print(titleForSurvey)
        self.tableView.reloadData()
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.titleForSurvey.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        cell.textLabel?.text = titleForSurvey[indexPath.row] as? String
        return cell
    }
    
    private func getData() -> NSArray {
        let data: NSData = NSData(contentsOfURL: NSURL(string: "http://www.mocky.io/v2/560920cc9665b96e1e69bb46")!)!
        return try! NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers) as! NSArray
    }
    
    private func filterTableViewForEnterText(searchText: String) {
        do {
        self.filtered = try self.titleForSurvey.filter( { (str: AnyObject) -> Bool in
            
            var strToSearch = str.rangeOfString(searchText)
            
            return strToSearch
        })
        }
    }
    
    func searchDisplayController(controller: UISearchDisplayController, shouldReloadTableForSearchString searchString: String?) -> Bool {
        self.filterTableViewForEnterText(searchString!)
        return true
    }
    
    func searchDisplayController(controller: UISearchDisplayController, shouldReloadTableForSearchScope searchOption: Int) -> Bool {
        self.filterTableViewForEnterText(self.searchDisplayController!.searchBar.text!)
        return true
    }
    

}