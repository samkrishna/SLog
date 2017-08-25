//
//  SLogDemo.swift
//  SLog
//
//  Created by Sam Krishna on 8/25/17.
//  Copyright © 2017 Sam Krishna. All rights reserved.
//

import Foundation
import os.log

public func tryOutput() {
    let file = #file.components(separatedBy: "/").last
    os_log("%@:%@ Here we are! %@", file!, #line.description, #function)
}

public func logThis(items: Any..., file: String = #file, line: Int = #line, function: String = #function) {
    if let f = file.components(separatedBy: "/").last {
        if let callSiteMessage = items.last as? String {
            os_log("%@:%@ %@ %@", f, line.description, function.description, callSiteMessage )
        }
    } else {
        print("[\(function)][\(line)]: ", items)
    }
}
