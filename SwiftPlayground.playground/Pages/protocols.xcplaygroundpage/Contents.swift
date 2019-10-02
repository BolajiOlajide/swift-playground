protocol FullNameable {
    var fullName: String { get }
}

// protocols can be adopted by a class, enum, struct
struct User: FullNameable {
    var fullName: String
}

let user = User(fullName: "Coop Proton")

struct Friend: FullNameable {
    let firstName: String
    let middleName: String
    let lastName: String
    
    // a computed value
    var fullName: String {
        return "\(firstName) \(middleName) \(lastName)"
    }
}

let friend = Friend(firstName: "Taylor", middleName: "Alison", lastName: "Swift")
friend.fullName

protocol UserProtocol {
    var name: String { get }
    var age: Int { get set }
}

struct Person: UserProtocol {
    let name: String
    var age: Int
}

let somePerson: Person = Person(name: "Coop", age: 13)

// WHY WE NEED PROTOCOLS
import Foundation

enum EmployeeType {
    case manager
    case traditional
}

protocol Payable {
    func pay() -> PayCheck
}

struct PayCheck {
    let base: Double
    let benefits: Double
    let deduction: Double
    let vacation: Double
}

class Employee {
    let name: String
    let address: String
    let startDate: Date
    let type: EmployeeType
    
    init(name: String, address: String, startDate: Date, type: EmployeeType) {
        self.name = name
        self.address = address
        self.startDate = startDate
        self.type = type
    }
}

class HourlyEmployee: Employee, Payable {
    var hourlyWage = 15.00
    var hoursWorked = 0.0
    var vacation = 0
    
    func pay() -> PayCheck {
        let base = hourlyWage * hoursWorked
        return PayCheck(base: base, benefits: 0, deduction: 0, vacation: 0)
    }
}

class SalariedEmployee: Employee, Payable {
    var salary = 50000.00
    var benefits = 1000.00
    var deductions = 0.0
    var vacation = 2
    
    func pay() -> PayCheck {
        let monthlySalary = salary / 12
        return PayCheck(base: monthlySalary, benefits: 0, deduction: 0, vacation: 0)
    }
}

// protocols can be regarded as a type
func pay(employee: Payable) {
    employee.pay()
}

let employee = SalariedEmployee(name: "Coop", address: "someAddress", startDate: Date(), type: .traditional)
pay(employee: employee)

// exercise
// Declare protocol here


enum LightState {
  case on, off
}

enum Color {
  case rgb(Double, Double, Double, Double)
  case hsb(Double, Double, Double, Double)
}

protocol ColorSwitchable {
  func switchColor(_ color: Color)
}

class WifiLamp: ColorSwitchable {
  let state: LightState
  var color: Color
    
  init() {
    self.state = .on
    self.color = .rgb(0,0,0,0)
  }
    
    func switchColor(_ color: Color) {
        self.color = color
    }
}

// Loosely Related Types
protocol Blendable {
    func blend()
}

class Fruit: Blendable {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func blend() {
        print("I'm mush!")
    }
}

class Dairy {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Cheese: Dairy {}

class Milk: Dairy, Blendable {
    func blend() {
        print("I haven't changed at all! I'm still milk")
    }
}

func makeSmoothie(with ingredients: [Blendable]) {
    for ingredient in ingredients {
        ingredient.blend()
    }
}

let strawberry = Fruit(name: "Strawberry")
let cheddar = Cheese(name: "Cheddar")
let chocolateMilk = Milk(name: "Chocolate")

let smoothieIngredients: [Blendable] = [strawberry, chocolateMilk]
makeSmoothie(with: smoothieIngredients)

/*
 When we have an IS-A type of relationship we use Inheritance
 e.g an airplane and a jet plane -> a jet plane is a type of  airplane so we use inheritance
 
 when you only need to model a subset of an object then protocols is the way to go
 an airplane is not a bird but they can both implement a method called Fly
 so a flyable protocol will be best suited here. THis is a HAS-A relationship
 */

// Protocol Inheritance

protocol Printable {
    func description() -> String
}

protocol PrettyPrintable: Printable {
    func prettyDescription() -> String
}

struct SomeUser: PrettyPrintable, Equatable {
    let name: String
    let age: Int
    let address: String
    
    func description() -> String {
        return "\(name), \(age), \(address)"
    }
    
    func prettyDescription() -> String {
        return "name: \(name)\nage: \(age)\naddress: \(address)"
    }
    
    static func ==(lhs: SomeUser, rhs: SomeUser) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age && lhs.address == rhs.address
    }
}

let someUser = SomeUser(name: "Coop", age: 13, address: "Some Address")
someUser.description()
print(someUser.prettyDescription())

let someUser2 = SomeUser(name: "Coop", age: 13, address: "Some Address")

print(someUser == someUser2)

// exercise
protocol Animal {
  var numberOfLegs: Int { get }
}

protocol Pet: Animal {
  var cuddlyName: String { get }
}

struct Dog: Pet {
    var cuddlyName: String
    var numberOfLegs: Int
}

// when you define an initializer in a protocol
// you have to prefex it with required in whatever class
// that's conforming to that protocol
protocol Player {
    init(x: Int, y: Int)
}

class Enemy: Player {
    var x: Int, y: Int
    
    required init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}
