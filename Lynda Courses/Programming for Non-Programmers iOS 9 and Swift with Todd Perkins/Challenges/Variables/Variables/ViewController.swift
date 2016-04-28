//
//  ViewController.swift
//  Variables
//
//  Created by Eude Kinsley Lesperance on 4/27/16.
//  Copyright © 2016 Qlovur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelAge: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        labelName.text = "Eude"
        labelAge.text = "\(19)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

