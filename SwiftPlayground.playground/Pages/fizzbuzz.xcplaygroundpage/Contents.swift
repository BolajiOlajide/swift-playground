func fizzBuzz(n: Int) -> String {
    // Enter your code between the two comment markers
    var result: String = ""
    if n % 15 == 0 {
        result = "FizzBuzz"
    } else if n % 5 == 0 {
        result = "Buzz"
    } else if n % 3 == 0 {
        result = "Fizz"
    }
    // End code
    return result
}

fizzBuzz(n: 10)
