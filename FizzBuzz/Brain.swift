import Foundation

class Brain: NSObject {
   
    func IsDivisibleByThree(number: Int) -> Bool
    {
        let result = number % 3
        if result == 0 {
            return true
        }
        return false
    }
    
}
