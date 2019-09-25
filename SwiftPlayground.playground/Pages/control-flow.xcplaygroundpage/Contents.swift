var todo: [String] = ["Finish collections course", "Buy groceries", "Respond to emails", "Pick up dry cleaning", "Order books online", "Mow the lawn"]

//print(todo[0])

for task in todo {
    print(task)
}

// ranges
for number in 1...5 {
    print(number)
}

print("========================================")

for number in 6..<10 { // half open range operator
    print(number)
}


// while loop
var x = 0

while x <= 20 {
    x += 1
    print(x)
}

// repeat while loop - you're guaranteed to run the block once because this
// loop runs the body before checking the condition
repeat {
    x += 1
    print("=======> \(x)")
} while x < 22


// exercise
let numbers = [2,8,1,16,4,3,9]
var sum = 0
var counter = 0

// Enter your code below

while counter < numbers.count {
    let newValue = numbers[counter]
    counter += 1
    sum += newValue
}
sum


// if statement
var temperature = 9

if temperature < 12 {
    print("It's getting chilly. I recommemnd wearing a light sweater")
} else if temperature < 18 {
    print("It's getting cold. Let's get that jacket out")
} else {
    print("It feels great outside! A t-shirt will do.")
}

// and operator - &&
// or operator - ||
// not operator - !

// switch statement
let airportCodes = ["LGA", "LHR", "CDG", "HKG", "DXB", "JFK"]

for airportCode in airportCodes {
    switch airportCode {
    case "LGA", "JFK": print("New York")
    case "LHR": print("London")
    case "CDG": print("Paris")
    case "HKG": print("Hong Kong")
    default: print("I don't know which city that airport is in")
    }
}

import GameKit

let randomTemperature = GKRandomSource.sharedRandom().nextInt(upperBound: 150)

switch randomTemperature {
case 0..<32:
    print("Forget clothes, you're basically a popsicle")
case 32...45: print("It's quite cold, you need a jacket")
case 46..<70: print("It's a bit chilly, I recommed wearing a light sweater")
case 70...100: print("It's quite hot! T-shirt weather")
default:
    print("Don't even bother to go out")
}


