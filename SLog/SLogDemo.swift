//
//  SLogDemo.swift
//  SLog
//
//  Created by Sam Krishna on 8/25/17.
//  Copyright © 2017 Sam Krishna. All rights reserved.
//

import Foundation
import os
import os.log

public func tryOutput() {
    let file = #file.components(separatedBy: "/").last
    os_log("%@:%@ Here we are! %@", file!, #line.description, #function)
}
