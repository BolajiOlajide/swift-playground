struct Point {
    let x: Int
    let y: Int
    
    /// Returns the surrounding points in range of
    /// the current one
    func points(in range: Int = 1) -> [Point] {
//        var results: [Point] = []
        var results = [Point]() // another way of creating arrays
        
        let lowerBoundOfXRange = x - range
        let upperBoundOfXRange = x + range
        
        let lowerBoundOfYRange = y - range
        let upperBoundOfYRange = y + range
        
        for xCoordinate in lowerBoundOfXRange...upperBoundOfXRange {
            for yCoordinate in lowerBoundOfYRange...upperBoundOfYRange {
                let coordinatePoint = Point(x: xCoordinate, y: yCoordinate)
                results.append(coordinatePoint)
            }
        }
        return results
    }
}

// Enter your code below
class Shape {
  var numberOfSides: Int
  
  init(numberOfSides: Int) {
    self.numberOfSides = numberOfSides
  }
}

let someShape = Shape(numberOfSides: 4)

// Exercises
/*
 In the editor you've been provided with a struct named Location that models a coordinate point using longitude and latitude values.
 For this task we want to create a class named Business. The class contains two constant stored properties: name of type String and location of type Location.
 In the initializer method pass in a name and an instance of Location to set up the instance of Business. Using this initializer, create an instance and assign it to a constant named someBusiness.
*/
struct Location {
  let latitude: Double
  let longitude: Double
}

class Business {
    let name: String
    let location: Location
    
    init(name: String, location: Location) {
        self.name = name
        self.location = location
    }
}

let myLocation = Location(latitude: 45.9, longitude: 20.3)
let someBusiness = Business(name: "Proton's cooking", location: myLocation)
// ===========================================================

// Enemies
class Enemy {
    var life: Int = 2 // default value since we want a fixed initial life
    let position: Point
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func decreaseLife(by factor: Int) {
        life -= factor
    }
}

// SuperEnemy inheriting from Enemy
class SuperEnemy: Enemy {
    let isSuper: Bool = true
    
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.life = 50
    }
}

// Towers
class Tower {
    let position: Point
    var range: Int = 1
    var strength: Int = 1
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func fire(at enemy: Enemy) {
        if isInRange(of: enemy) {
            enemy.decreaseLife(by: strength)
            print("Gotcha!")
        } else {
            print("Darn! Out of range.")
        }
    }
    
    func isInRange(of enemy: Enemy) -> Bool {
        let availablePositions = position.points(in: range)
        
        for point in availablePositions {
            if (enemy.position.x == point.x) && (enemy.position.y == point.y) {
                return true
            }
        }
        return false
    }
}

let tower = Tower(x: 0, y: 0)
let enemy = Enemy(x: 1, y: 1)
let enemy2 = Enemy(x: 4, y: 5)

print(enemy.life)

tower.fire(at: enemy)
tower.fire(at: enemy2)

print(enemy.life)

let superEnemy = SuperEnemy(x: 1, y: 0)

print(superEnemy.life)
tower.fire(at: superEnemy)
tower.fire(at: superEnemy)
tower.fire(at: superEnemy)
tower.fire(at: superEnemy)
print(superEnemy.life)

/*
 In the editor, I have provided a class named Vehicle.
 Your task is to create a subclass of Vehicle, named Car, that adds an additional stored property numberOfSeats of type Int with a default value of 4.
 Once you've implemented the Car class, create an instance and assign it to a constant named someCar.
 */
class Vehicle {
  var numberOfDoors: Int
  var numberOfWheels: Int
    
  init(withDoors doors: Int, andWheels wheels: Int) {
      self.numberOfDoors = doors
      self.numberOfWheels = wheels
  }
}

// Enter your code below
class Car: Vehicle {
    let numberOfSeats: Int = 4

    override init(withDoors doors: Int, andWheels wheels: Int) {
        super.init(withDoors: doors, andWheels: wheels)
    }
}

let someCar = Car(withDoors: 3, andWheels: 4)

class LaserTower: Tower {
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.range = 100
        self.strength = 100
    }
    
    override func fire(at enemy: Enemy) {
        while enemy.life >= 0 {
            enemy.decreaseLife(by: strength)
        }
        
        print("Enemy vanquished!")
    }
}

let laserTower = LaserTower(x: 2, y: 2)
laserTower.fire(at: superEnemy)

/*
 I've provided a base class Person in the editor below. Once an instance of Person is created, you can call fullName() and get a person's full name.
 Your job is to create a class named Doctor that overrides the fullName() method. Once you have a class definition, create an instance and assign it to a constant named someDoctor.
 For example, given the first name "Sam", and last name "Smith", calling fullName() on an instance of Person would return "Sam Smith", but calling the same method on an instance of Doctor would return "Dr. Smith".
 */
class Person {
  let firstName: String
  let lastName: String

  init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }

  func fullName() -> String {
    return "\(firstName) \(lastName)"
  }
}

// Enter your code below
class Doctor: Person {
    override init(firstName: String, lastName: String) {
        super.init(firstName: firstName, lastName: lastName)
    }
    
    override func fullName() -> String {
        return "Dr. \(lastName)"
    }
}

let someDoctor = Doctor(firstName: "Sam", lastName: "Smith")
someDoctor.fullName()
