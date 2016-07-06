//
//  BrainTests.swift
//  FizzBuzz
//
//  Created by Brian Davis on 7/6/16.
//  Copyright © 2016 Brian Davis. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testIsDivisibleByThree() {
        let brain = Brain()
        let result = brain.IsDivisibleByThree(3)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByThrree() {
        let brain = Brain()
        let result = brain.IsDivisibleByThree(1)
        XCTAssertEqual(result, false)
    }
    
}
