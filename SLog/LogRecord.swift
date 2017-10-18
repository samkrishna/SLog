//
//  LogRecord.swift
//  SLog
//
//  Created by Sam Krishna on 10/17/17.
//  Copyright © 2017 Sam Krishna. All rights reserved.
//

import Foundation

public struct LogRecord {
    public let message: String

    public let severity: LogSeverity

    public let callSiteFilePath: String

    public let callSiteFileLine: Int

    public let stackFrame: String

    public let threadID: UInt64

    public let timestamp: Date

    public let processName: String

    public let processID: Int32

    public init(message: String, severity: LogSeverity, callSiteFilePath: String, callSiteFileLine: Int, stackFrame: String, threadID: UInt64, processName: String, processID: Int32, timestamp: Date = Date()) {
        self.message = message
        self.severity = severity
        self.callSiteFilePath = callSiteFilePath
        self.callSiteFileLine = callSiteFileLine
        self.stackFrame = stackFrame
        self.threadID = threadID
        self.processName = processName
        self.processID = processID
        self.timestamp = timestamp
    }
}

