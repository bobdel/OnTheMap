//
//  AddLocationViewController.swift
//  OnTheMap
//
//  Created by Robert DeLaurentis on 7/16/18.
//  Copyright © 2018 Robert DeLaurentis. All rights reserved.
//

import UIKit
import os.log

class AddLocationViewController: UIViewController {

    // MARK: - Outlets and Actions

    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var website: UITextField!

    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func findLocation(_ sender: UIButton) {
    }


    // MARK: - ViewController Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        os_log("%@ %@", log: Log.general, type: .debug, self, #function)
    }

} // end AddLocationViewController
