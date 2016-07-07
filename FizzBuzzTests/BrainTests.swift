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
    
    let brain = Brain()
    
    func testIsDivisibleByThree() {
        
        let result = brain.IsDivisibleByThree(3)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByThree() {
        let result = brain.IsDivisibleByThree(1)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFive()
    {
        let result = brain.IsDivisibleByFive(5)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFive()
    {
        let result = brain.IsDivisibleByFive(1)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFifteen()
    {
        let result = brain.IsDivisibleByFifteen(15)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFifteen()
    {
        let result = brain.IsDivisibleByFifteen(1)
        XCTAssertEqual(result, false)
    }
    
    func testSayFizz()
    {
        let result = brain.Check(3)
        XCTAssertEqual(result, "Fizz")
    }
    
    func testSayBuzz()
    {
        let result = brain.Check(5)
        XCTAssertEqual(result, "Buzz")
    }
    
    func testSayFizzBuzz()
    {
        let result = brain.Check(15)
        XCTAssertEqual(result, "FizzBuzz")
    }
    
    func testCheckForOne()
    {
        let result = brain.Check(1)
        XCTAssertEqual(result, "1")
    }
    
}
