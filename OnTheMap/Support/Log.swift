//
//  Log.swift
//  OnTheMap
//
//  Created by Robert DeLaurentis on 7/16/18.
//  Copyright © 2018 Robert DeLaurentis. All rights reserved.
//

import Foundation
import os.log

struct Log {

    // create a log object to be used thoughout this project
    static var general = OSLog(
        subsystem: "com.bobdel.OnTheMap",
        category: "general")

    // to write to this log, start with
    // os_log("%@ %@", log: Log.general, type: .debug, self, #function)


}
