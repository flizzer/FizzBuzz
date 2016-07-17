
import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
   
    let game = Game()
    
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
        XCTAssertTrue(result.Correct)
    }
    
    func testIfFizzMoveIsIncorrect() {
        game.Score = 1
        let result = game.Play("Fizz")
        XCTAssertFalse(result.Correct)
    }
    
    func testIfBuzzMoveIsCorrect() {
        game.Score = 4
        let result = game.Play("Buzz")
        XCTAssertTrue(result.Correct)
    }
    
    func testIfBuzzMoveIsInCorrect() {
        game.Score = 1
        let result = game.Play("Buzz")
        XCTAssertFalse(result.Correct)
    }
    
    func testIfFizzBuzzMoveIsCorrect() {
        game.Score = 14
        let result = game.Play("FizzBuzz")
        XCTAssertTrue(result.Correct)
    }
    
    func testIfFizzBuzzMoveIsInCorrect() {
        game.Score = 1
        let result = game.Play("FizzBuzz")
        XCTAssertFalse(result.Correct)
    }
    
    func testIfNumberMoveIsCorrect() {
        game.Score = 1
        let result = game.Play("2")
        XCTAssertTrue(result.Correct)
    }
    
    func testIfNumberMoveIsInCorrect() {
        game.Score = 2
        let result = game.Play("3")
        XCTAssertFalse(result.Correct)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.Score = 2
        game.Play("3")
        XCTAssertEqual(game.Score, 2)
    }
    
    func testPlayShouldReturnIfMoveCorrect() {
        let response = game.Play("1")
        XCTAssertNotNil(response.Correct)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.Play("1")
        XCTAssertNotNil(response.Score)
    }
}
