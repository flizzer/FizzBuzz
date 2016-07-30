
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
    
    private func wait(_ seconds: TimeInterval) {
        let dateAfterWait = Date(timeIntervalSinceNow: seconds)
        RunLoop.main.run(until: dateAfterWait)
    }
    

}
