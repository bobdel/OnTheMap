//
//  ViewController.swift
//  OnTheMap
//
//  Created by Robert DeLaurentis on 7/16/18.
//  Copyright © 2018 Robert DeLaurentis. All rights reserved.
//

import UIKit
import os.log

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        os_log("%@ %@", log: Log.general, type: .debug, self, #function)

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

