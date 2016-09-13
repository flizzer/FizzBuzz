import Foundation

class Game : NSObject
{
    var Score: Int
    let brain: Brain
    
    override init() {
        Score = 0
        brain = Brain()
    }
    
    func Play(_ move:Move) -> (Correct: Bool, Score: Int) {
        let result = brain.Check(Score + 1)
        if result == move {
            Score += 1
            return (true,Score)
        }
        return (false,Score)
    }
}
