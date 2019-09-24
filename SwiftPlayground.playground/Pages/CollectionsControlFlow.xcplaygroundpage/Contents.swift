// collections

var todo: [String] = ["Finish this course", "Build an iOS app", "Claim Senior Developer lol"]
var numbers: [Int] = [1,2,4]

todo.count
todo.append("Create another App")

// concatenating two arrays
[1,2] + [3]
todo += ["Order book online"]
//todo = todo + ["Order book online"]
todo[0]

// insert using indexes
todo.insert("Read new book", at: 2)

// removing items from arrays
todo.remove(at: 2)

todo
