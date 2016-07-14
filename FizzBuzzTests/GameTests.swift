
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
    
    func testIfFizzMoveIsCorrect() {
        game.Score = 2
        let result = game.Play("Fizz")
        XCTAssertTrue(result)
    }
    
    func testIfFizzMoveIsIncorrect() {
        game.Score = 1
        let result = game.Play("Fizz")
        XCTAssertFalse(result)
    }
    
    func testIfBuzzMoveIsCorrect() {
        game.Score = 4
        let result = game.Play("Buzz")
        XCTAssertTrue(result)
    }
    
    func testIfBuzzMoveIsInCorrect() {
        game.Score = 1
        let result = game.Play("Buzz")
        XCTAssertFalse(result)
    }
    
    func testIfFizzBuzzMoveIsCorrect() {
        game.Score = 14
        let result = game.Play("FizzBuzz")
        XCTAssertTrue(result)
    }
    
    func testIfFizzBuzzMoveIsInCorrect() {
        game.Score = 1
        let result = game.Play("FizzBuzz")
        XCTAssertFalse(result)
    }
    
    func testIfNumberMoveIsCorrect() {
        game.Score = 1
        let result = game.Play("2")
        XCTAssertTrue(result)
    }
    
    func testIfNumberMoveIsInCorrect() {
        game.Score = 2
        let result = game.Play("3")
        XCTAssertFalse(result)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.Score = 2
        game.Play("3")
        XCTAssertEqual(game.Score, 2)
    }
}
