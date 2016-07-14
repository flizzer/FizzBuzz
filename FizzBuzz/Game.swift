import Foundation

class Game : NSObject
{
    var Score: Int
    let brain: Brain
    
    override init() {
        Score = 0
        brain = Brain()
    }
    
    func Play(move:String) -> Bool {
        let result = brain.Check(Score + 1)
        if result == move {
            Score += 1
            return true
        }
        return false
    }
}
