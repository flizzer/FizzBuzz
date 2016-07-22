//
//  ViewControllerUITests.swift
//  FizzBuzz
//
//  Created by Brian Davis on 7/17/16.
//  Copyright © 2016 Brian Davis. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
    
    override func setUp() {
        super.setUp()
       
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
//    override func tearDown() {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//        super.tearDown()
//    }

    func testTapNumberButtonIncrementsScore() {
        wait(5)
        XCUIApplication().buttons["0"].tap()
        //waitForExpectationsWithTimeout(5.0,handler: nil)
        //wait(5)
        //XCUIApplication().buttons["0"].tap()
        //wait(1)
        let newScore = XCUIApplication().buttons["0"].label
//        wait(1)
        XCTAssertEqual(newScore, "1")
    }
    
    private func wait(_ seconds: TimeInterval) {
        let dateAfterWait = Date(timeIntervalSinceNow: seconds)
        RunLoop.main.run(until: dateAfterWait)
    }
    

}
