struct Friend {
    let name: String
    let age: String
    let address: String?
}

enum FriendError: Error {
    case invalidData(description: String)
    case someError
}

func friend(from dict:[String: String]) throws -> Friend {
    guard let name = dict["name"] else {
        throw FriendError.invalidData(description: "Invalid name value.")
    }
    
    guard let age = dict["age"] else {
        throw FriendError.invalidData(description: "Invalid age value.")
    }
    
    let address = dict["address"]
    return Friend(name: name, age: age, address: address)
}

let response = ["name": "Coop", "age": "300", "address": "some address"]
//let someFriend = try friend(from: response)
//print(someFriend)

func send(message: String, to friend: Friend) {}

//do {
//    let myFriend = try friend(from: response)
//    send(message: "Test", to: myFriend)
//} catch let error {
//    print(error)
//}

do {
    let myFriend = try friend(from: response)
    send(message: "Test", to: myFriend)
} catch FriendError.invalidData(let description) {
    print(description)
} catch FriendError.someError {
    
}

// exercisee
enum ParserError: Error {
  case emptyDictionary
  case invalidKey
}

struct Parser {
  var data: [String : String?]?
    
  func parse() throws {
    guard self.data != nil else {
      throw ParserError.emptyDictionary
    }
    
    guard self.data?.keys.contains("someKey") == true else {
        throw ParserError.invalidKey
    }
  }
}

let data: [String : String?]? = ["someKey": nil]
let parser = Parser(data: data)

do {
    try parser.parse()
} catch ParserError.emptyDictionary {
    print("Dictionary is empty")
} catch ParserError.invalidKey {
    print("somekey key doesnt exist")
}

// use the defer statement to execute statements right before leaving the current score
// remember the defer statements executes in reverse order :)
