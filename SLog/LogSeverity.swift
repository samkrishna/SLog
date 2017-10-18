//
//  LogSeverity.swift
//  SLog
//
//  Created by Sam Krishna on 10/17/17.
//  Copyright © 2017 Sam Krishna. All rights reserved.
//

import Foundation

public func <(lhs: LogSeverity, rhs: LogSeverity) -> Bool {
    return lhs.rawValue < rhs.rawValue
}

public func ==(lhs: LogSeverity, rhs: LogSeverity) -> Bool {
    return lhs.rawValue == rhs.rawValue
}

public enum LogSeverity: UInt {
    case verbose    = 0
    case debug      = 1
    case info       = 2
    case warning    = 3
    case error      = 4

    public var description: String {
        switch self {
        case .verbose:      return "Verbose"
        case .debug:        return "Debug"
        case .info:         return "Info"
        case .warning:      return "Warning"
        case .error:        return "Error"
        }
    }
}

