import Foundation

class Brain: NSObject {
   
    func IsDivisibleByThree(number: Int) -> Bool
    {
        return IsDivisibleBy(3, number: number)
    }
    
    func IsDivisibleByFive(number: Int) -> Bool
    {
        return IsDivisibleBy(5, number: number)
    }
    
    func IsDivisibleByFifteen(number: Int) -> Bool
    {
        return IsDivisibleBy(15, number: number)
    }
    
    func IsDivisibleBy(divisor: Int, number: Int) -> Bool
    {
        let result = number % divisor
        if result == 0 {
            return true
        }
        return false
    }
    
    func Check(number: Int) -> String
    {
        if IsDivisibleByFifteen(number) {
            return "FizzBuzz"
        }
        else if IsDivisibleByThree(number) {
            return "Fizz"
        }
        else if IsDivisibleByFive(number) {
            return "Buzz"
        }
        return "\(number)"
    }
}
