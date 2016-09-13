
import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
   
    let game = Game()
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.Score == 0)
    }
    
    func testOnPlayScoreIsIncremented() {
        game.Score = 0
        let result = game.Play(Move.Number)
        XCTAssertTrue(result.Score == 1)
    }
    
    func testIfFizzMoveIsCorrect() {
        game.Score = 2
        let result = game.Play(Move.Fizz)
        XCTAssertTrue(result.Correct)
    }
    
    func testIfFizzMoveIsIncorrect() {
        game.Score = 1
        let result = game.Play(Move.Fizz)
        XCTAssertFalse(result.Correct)
    }
    
    func testIfBuzzMoveIsCorrect() {
        game.Score = 4
        let result = game.Play(Move.Buzz)
        XCTAssertTrue(result.Correct)
    }
    
    func testIfBuzzMoveIsInCorrect() {
        game.Score = 1
        let result = game.Play(Move.Buzz)
        XCTAssertFalse(result.Correct)
    }
    
    func testIfFizzBuzzMoveIsCorrect() {
        game.Score = 14
        let result = game.Play(Move.FizzBuzz)
        XCTAssertTrue(result.Correct)
    }
    
    func testIfFizzBuzzMoveIsInCorrect() {
        game.Score = 1
        let result = game.Play(Move.FizzBuzz)
        XCTAssertFalse(result.Correct)
    }
    
    func testIfNumberMoveIsCorrect() {
        game.Score = 1
        let result = game.Play(Move.Number)
        XCTAssertTrue(result.Correct)
    }
    
    func testIfNumberMoveIsInCorrect() {
        game.Score = 2
        let result = game.Play(Move.Number)
        XCTAssertFalse(result.Correct)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.Score = 2
        let result = game.Play(Move.Number)
        XCTAssertEqual(result.Score, 2)
    }
    
    func testPlayShouldReturnIfMoveCorrect() {
        let response = game.Play(Move.Number)
        XCTAssertNotNil(response.Correct)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.Play(Move.Number)
        XCTAssertNotNil(response.Score)
    }
}
