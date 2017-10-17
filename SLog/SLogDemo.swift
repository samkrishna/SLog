//
//  SLogDemo.swift
//  SLog
//
//  Created by Sam Krishna on 8/25/17.
//  Copyright © 2017 Sam Krishna. All rights reserved.
//

import Foundation
import os.log

public func logThis(items: Any..., file: String = #file, line: Int = #line, function: String = #function) {
    // Yes, ridiculous overhead, but just getting going
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .none
    dateFormatter.locale = Locale(identifier: "en_US")
    dateFormatter.timeZone = TimeZone(identifier: "US/Pacific")
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSS"

    if let fileName = file.components(separatedBy: "/").last {
        if let callSiteMessage = items.last as? String {
            let dateString = dateFormatter.string(from: Date())
            print("\(dateString) \(fileName):\(line.description) \(function.description) \(callSiteMessage)")
        }
    } else {
        print("[\(function)][\(line)]: ", items)
    }
}
