class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
}

class Residence {
    var numberOfRooms = 1
    var address: Address?
}

class Person {
    var residence: Residence?
}

let susan = Person()

let susansAddress = Address()
susansAddress.street = "1234, Something Drive"
susansAddress.buildingNumber = "10"
susansAddress.buildingName = "Building"

let susansResidence = Residence()
susansResidence.numberOfRooms = 5
susansResidence.address = susansAddress

susan.residence = susansResidence

// optional chaining
let buildingNumber = susan.residence?.address?.buildingNumber
