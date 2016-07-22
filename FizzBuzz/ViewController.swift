//
//import UIKit
//
//class ViewController: UIViewController {
//
//    var game: Game?
//    
//    @IBOutlet weak var numberButton: UIButton!
//    
//    var GameScore: Int? {
//        didSet {
////            guard let unwrappedScore = GameScore else {
////                print("GameScore is nil")
////                return
////            }
//            numberButton.setTitle("1", forState: .Normal)
//            print("numberButtonTitle: \(numberButton.titleLabel)")
//        }
//    }
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        game = Game()
//        guard let checkedGame = game else {
//            print("Game is nil")
//            return
//        }
//        
//        GameScore = checkedGame.Score
//        print("Initial GameScore: \(GameScore!)")
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
//    
//    func Play(move:String) {
//        guard let unwrappedGame = game else {
//            print("Game is nil!")
//            return
//        }
//        let response = unwrappedGame.Play(move)
//        GameScore = response.Score
//        print("Response GameScore: \(GameScore!)")
//    }
//
//    @IBAction func buttonTapped(sender: UIButton) {
//        Play("1")
//    }
//}

//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Rafael Ferreira on 6/16/16.
//  Copyright © 2016 Swift Yah. All rights reserved.
//

import UIKit

/// The `ViewController` that conects our UI with `Brain` model.
class ViewController: UIViewController {
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    
    // MARK: Read-only variables.
    
    /// The current game score.
    private(set) var gameScore = 0 {
        didSet {
            numberButton.setTitle("\(gameScore)", for: UIControlState())
        }
    }
    
    /// The current game.
    private(set) var game = Game()
    
    // MARK: Public functions.
    
    /// Calls for the `Brain` that the user is trying to do a move.
    func play(_ move: String) -> Bool {
        let result = game.Play(move)
        
        gameScore = result.Score
        
        return result.Correct
    }
    
    // MARK: IBAction functions.
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        play("1")
//        switch sender {
//        case numberButton:
//            play(.Number)
//            
//        case fizzButton:
//            play(.Fizz)
//            
//        case buzzButton:
//            play(.Buzz)
//            
//        default:
//            play(.FizzBuzz)
//        }
        
    }
    
}
