//
//  Swift1_2SampleTests.swift
//  Swift1-2SampleTests
//
//  Created by Kenta Akimoto on 2015/07/03.
//  Copyright (c) 2015年 KentaAkimoto. All rights reserved.
//

import UIKit
import XCTest

class Swift1_2SampleTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
