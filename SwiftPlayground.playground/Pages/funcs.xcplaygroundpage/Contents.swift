func area(width: Int, length: Int = 10) -> Int {
    return width * length
}

area(width: 12, length: 10)

area(width: 20)

// argument labels
func remove(havingValue value: String) {
    print(value)
}

remove(havingValue: "Hue")

// the return type is a tuple
//func carpetCostHaving(length: Int, width: Int, carpetColor color: String = "tan") -> (Int, String) { // OR
func carpetCostHaving(length: Int, width: Int, carpetColor color: String = "tan") -> (price: Int, carpetColor: String) {
    let areaOfRoom = length * width
    
    var price = 0
    
    switch color {
    case "grey":
        price = areaOfRoom * 1
    case "tan": price = areaOfRoom * 2
    case "blue": price = areaOfRoom * 4
    default:
        price = 0
    }
    
    return (price, color)
}

let result = carpetCostHaving(length: 10, width: 10)
let price = result.price // result.price also gives the same result
let color = result.1 // result.carpetColor since that's the external name specified in our func
