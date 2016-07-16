
import XCTest
@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {

    var viewController : ViewController!
    
    override func setUp() {
        super.setUp()
        let storyBoard = UIStoryboard(name: "Main"
            , bundle: NSBundle.mainBundle())
        viewController = storyBoard
            .instantiateViewControllerWithIdentifier("ViewController")
                as! ViewController
        UIApplication.sharedApplication().keyWindow!
            .rootViewController = viewController
        let _ = viewController.view
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testViewControllerSetup() {
        XCTAssertTrue(true)
    }
    
    func testMove1IncrementsScore() {
        viewController.Play("1")
        let newScore = viewController.GameScore
        XCTAssertEqual(newScore, 1)
    }

    func testMove2IncrementsScore() {
        viewController.Play("1")
        viewController.Play("2")
        let newScore = viewController.GameScore
        XCTAssertEqual(newScore, 2)
    }
}
