//
//  LoginViewController.swift
//  OnTheMap
//
//  Created by Robert DeLaurentis on 7/16/18.
//  Copyright © 2018 Robert DeLaurentis. All rights reserved.
//

import UIKit
import os.log

class LoginViewController: UIViewController {

    // MARK: Outlets and Actions

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var tempStatus: UITextField!

    @IBOutlet weak var login: UIButton!
    

    // MARK: ViewController Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        os_log("%@ %@", log: Log.general, type: .debug, self, #function)
        // Do any additional setup after loading the view.
    }

}
