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
    
    func Check(_ number: Int) -> String
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
