
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

// early exit
struct Friend {
    let name: String
    let age: String
    let address: String?
    
    // failable initializer
//    init?(friendDictionary: [String: String]) {
//        return nil
//    }
}

func new(friendDictionary: [String: String]) -> Friend? {
    if let name = friendDictionary["name"], let age = friendDictionary["age"] {
        let address = friendDictionary["address"]
        return Friend(name: name, age: age, address: address)
    } else {
        return nil
    }
}

func newFriend(friendDictionary: [String: String]) -> Friend? {
    guard let name = friendDictionary["name"], let age = friendDictionary["age"] else {
        return nil
    }
    let address = friendDictionary["address"]
    return Friend(name: name, age: age, address: address)
}
