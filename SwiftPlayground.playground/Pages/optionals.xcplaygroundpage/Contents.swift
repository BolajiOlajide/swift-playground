
struct Person {
    let firstName: String
    let lastName: String
    let middleName: String?
    
    func fullName() -> String {
        return firstName + " " + middleName! + " " + lastName
    }
}

let me = Person(firstName: "Coop", lastName: "Proton", middleName: "nil")
me.fullName()

// Enter your code below
var someValue: Int? = nil


// OPTIONALS
let weatherDictionary: [String: [String: String]] = [
    "currently": ["temperature": "22.4"],
    "daily": ["temperature": "22.5"],
    "weekly": ["temperature": "22.6"]
]

if let dailyWeather = weatherDictionary["daily"] {
    if let highTemp = dailyWeather["temperature"] {
        print(highTemp)
    }
}

if let dailyWeather = weatherDictionary["daily"], let highTemperature = dailyWeather["temperature"] {
    print(highTemperature)
}

// downsides to using if..let
// can get too bulky

