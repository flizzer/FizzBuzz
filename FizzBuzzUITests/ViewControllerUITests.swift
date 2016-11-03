
import XCTest

class ViewControllerUITests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    func testTapNumberButtonIncrementsScore() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }
    
    func testTapNumberButtonTwiceChangesTitleTo2() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        numberButton.tap()
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "2")
    }
    
    func testTapFizzButtonIncrementsTo3() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        numberButton.tap();
        numberButton.tap();
        let fizzButton = app.buttons["fizzButton"]
        fizzButton.tap()
        let newScore = numberButton.label;
        XCTAssertEqual(newScore,"3")
    }
    
    func testBuzzButtonIncrementsTo5() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        numberButton.tap();
        numberButton.tap();
        let fizzButton = app.buttons["fizzButton"]
        fizzButton.tap()
        numberButton.tap()
        let buzzButton = app.buttons["buzzButton"]
        buzzButton.tap()
        let newScore = numberButton.label;
        XCTAssertEqual(newScore,"5")
    }
    
    func testFizzBuzzButtonIncrementsTo15() {
        let app = XCUIApplication()
        let fizzBuzzButton = app.buttons["fizzBuzzButton"]
        let numberButton = app.buttons["numberButton"]
        playTo14()
        fizzBuzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore,"15")
    }
    
    func playTo14() {
            let app = XCUIApplication()
            let numberButton = app.buttons["numberButton"]
            let fizzButton = app.buttons["fizzButton"]
            let buzzButton = app.buttons["buzzButton"]
            numberButton.tap()
            numberButton.tap()
            fizzButton.tap()
            numberButton.tap()
            buzzButton.tap()
            fizzButton.tap()
            numberButton.tap()
            numberButton.tap()
            fizzButton.tap()
            buzzButton.tap()
            numberButton.tap()
            fizzButton.tap()
            numberButton.tap()
            numberButton.tap()
    }
}
