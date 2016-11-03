
import UIKit

class ViewController: UIViewController {

    var game: Game?
    
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    
    var GameScore: Int? {
        didSet {
            guard let unwrappedGameScore = GameScore else {
                print("GameScore is nil")
                return
            }
            numberButton.setTitle("\(unwrappedGameScore)", for: .normal)
            print("numberButtonTitle: \(numberButton.titleLabel)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        guard let checkedGame = game else {
            print("Game is nil")
            return
        }
        
        GameScore = checkedGame.Score
        print("Initial GameScore: \(GameScore!)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func Play(move:Move) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.Play(move)
        GameScore = response.Score
        print("Response GameScore: \(GameScore!)")
    }

    @IBAction func buttonTapped(_ sender:UIButton!) {
        switch sender {
        case numberButton:
            Play(move: Move.Number)
        case fizzButton:
            Play(move: Move.Fizz)
        case buzzButton:
            Play(move: Move.Buzz)
        case fizzBuzzButton:
            Play(move: Move.FizzBuzz)
        default:
            print("Invalid Selection")
        }
        
    }
}
