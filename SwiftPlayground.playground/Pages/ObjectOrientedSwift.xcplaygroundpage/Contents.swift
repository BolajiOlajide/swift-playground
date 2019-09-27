let x1 = 0
let y1 = 0

let coordinate1: (x: Int, y: Int) = (0, 0)
print(coordinate1.x)

struct Point {
    let x: Int
    let y: Int
    
    /// Returns the surrounding points in range of
    /// the current one
    func points(range: Int = 1) -> [Point] {
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
print("fdf")

let p1 = Point(x: 2, y: 2)
p1.points()

struct Book {
  let title: String
  let author: String
  let price: Double
}

// Enter your code below
let myBook = Book(title: "Animal Farm", author: "George Orwell", price: 6.00)

struct Person {
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

let aPerson = Person(firstName: "Coop", lastName: "Proton")
let myFullName = aPerson.fullName()
