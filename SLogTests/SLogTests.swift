//
//  SLogTests.swift
//  SLogTests
//
//  Created by Sam Krishna on 8/25/17.
//  Copyright © 2017 Sam Krishna. All rights reserved.
//

import XCTest
@testable import SLog

class SLogTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLogThis() {
        logThis(items: "Log This!")
    }
}
