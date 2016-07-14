
import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
   
    let game = Game()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.Score == 0)
    }
    
    func testOnPlayScoreIncremented() {
        game.Play("1")
        XCTAssertTrue(game.Score == 1)
    }
    
    func testIfMoveIsCorrect() {
        game.Score = 2
        let result = game.Play("Fizz")
        XCTAssertTrue(result)
    }
    
    func testIfMoveIsIncorrect() {
        game.Score = 1
        let result = game.Play("Fizz")
        XCTAssertFalse(result)
    }
}
