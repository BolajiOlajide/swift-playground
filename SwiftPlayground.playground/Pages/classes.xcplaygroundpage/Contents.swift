class Person {
    var name = ""
    
    init() {
        
    }
    
    init(_ name: String) {
        self.name = name
    }
}

class Employee: Person {
    var salary = 0
    var role = ""
    
    override init(_ name:String) {
        super.init(name) // calling the init in the Person class
        self.role = "Analyst"
    }
    
    func doWork() {
        print("\(name) is doing work.")
        salary += 10
    }
}

var me: Employee = Employee("Proton")
me.salary = 2000
me.role = "Director"

print(me.name)

me.doWork()

print(me.salary)

// subclassing / inheritance

class Manager: Employee {
    var teamSize = 0
    
    override init(_ name:String) {
        super.init(name) // calling the init in the Employee class
    }
    
    override func doWork() {
//        super.doWork() - this would run the original doWork method
        print("\(name) is managing people.")
        salary += 100
    }
}

var m = Manager("Maggie")
m.salary = 1500
m.role = "Manager"
m.teamSize = 10

m.doWork()
print(m.salary)

let p = Person()
print(p.name) // should be an empty string because it makes use of the first init in Person

let myPerson = Person("Proton")
print(myPerson.name) // makes use of the second init method
