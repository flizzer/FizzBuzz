import Foundation

class Brain: NSObject {
   
    func IsDivisibleByThree(_ number: Int) -> Bool
    {
        return IsDivisibleBy(3, number: number)
    }
    
    func IsDivisibleByFive(_ number: Int) -> Bool
    {
        return IsDivisibleBy(5, number: number)
    }
    
    func IsDivisibleByFifteen(_ number: Int) -> Bool
    {
        return IsDivisibleBy(15, number: number)
    }
    
    func IsDivisibleBy(_ divisor: Int, number: Int) -> Bool
    {
        let result = number % divisor
        if result == 0 {
            return true
        }
        return false
    }
    
    func Check(_ number: Int) -> Move
    {
        if IsDivisibleByFifteen(number) {
            return Move.FizzBuzz
        }
        else if IsDivisibleByThree(number) {
            return Move.Fizz
        }
        else if IsDivisibleByFive(number) {
            return Move.Buzz
        }
        return Move.Number
    }
}
