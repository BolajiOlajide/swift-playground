enum Coin: Double {
    case penny = 0.01
    case nickel = 0.05
    case dime = 0.1
    case quarter = 0.25
}

let wallet: [Coin] = [.penny, .nickel, .dime, .dime, .quarter, .quarter, .quarter, .dime, .nickel, .penny, .penny, .dime, .quarter, .nickel]

var count = 0

for case .quarter in wallet {
    count += 1
}

for coin in wallet {
    if case .nickel = coin {
        print("Not so much money")
    } else if case .dime = coin {
        print("Better than nothing")
    }
}

let someOptional: Int? = 42

//if case .some(let x) = someOptional {
//    print(x)
//}
