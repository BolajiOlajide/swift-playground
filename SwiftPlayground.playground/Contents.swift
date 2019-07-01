import UIKit

var str: String = "Hello, playground!"
//var firstname = "Bolaji"

//print(str, firstname)

let firstname: Any = "Bolaji"
print(firstname)

var name: String = "Proton"
var isHungry: Bool = true
var age: Int = 18
var percent:Double = 0.3 // default for decimals is double

var a = 2
var b = 3
var c = 4
var d = 4.5

print(a * b)
print(a + b)
print(c - a)
print(pow(Decimal(a), c))
print(sqrt(9))
print(ceil(d)) // round up
print(floor(d)) // round down

// incrementing via shorthand
a += 1
// decrementing
c -= 1

if c < 5 {
    print("c is less than 5")
}
