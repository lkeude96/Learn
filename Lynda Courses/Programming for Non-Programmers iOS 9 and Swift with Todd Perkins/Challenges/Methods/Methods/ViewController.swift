//
//  ViewController.swift
//  Methods
//
//  Created by Eude Kinsley Lesperance on 4/28/16.
//  Copyright © 2016 Qlovur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var clickCount: Int = 0
    
    @IBAction func didClick(sender: AnyObject) {
        clickCount += 1
        label.text = "\(clickCount)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

