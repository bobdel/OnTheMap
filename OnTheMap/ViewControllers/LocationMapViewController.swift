//
//  LocationMapViewController.swift
//  OnTheMap
//
//  Created by Robert DeLaurentis on 7/16/18.
//  Copyright © 2018 Robert DeLaurentis. All rights reserved.
//

import UIKit
import os.log

class LocationMapViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        os_log("%@ %@", log: Log.general, type: .debug, self, #function)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
