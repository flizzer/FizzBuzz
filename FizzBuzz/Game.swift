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
        Score += 1
        let result = brain.Check(Score)
        if result == move {
            return true
        }
        return false
    }
}
