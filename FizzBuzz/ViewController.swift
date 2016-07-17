
import UIKit

class ViewController: UIViewController {

    var game: Game?
    var GameScore: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func Play(move:String) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.Play(move)
        GameScore = response.Score
    }

}

