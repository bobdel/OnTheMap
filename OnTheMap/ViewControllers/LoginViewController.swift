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

    @IBAction func login(_ sender: UIButton) {
        os_log("%@ %@", log: Log.general, type: .debug, self, #function)
        UdacityClient.sharedInstance.authenticate(username.text!, password.text!) {sessionID in
            DispatchQueue.main.async {
                if sessionID != nil {
                    self.performSegue(withIdentifier: "revealTabBarController", sender: sender)
                } else {
                    self.tempStatus.text = "Login Failed"
                }
            }
        }
    }


    // MARK: ViewController Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        os_log("%@ %@", log: Log.general, type: .debug, self, #function)
    }

}
