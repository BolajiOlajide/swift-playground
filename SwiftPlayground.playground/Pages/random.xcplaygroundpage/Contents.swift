func hello(_ name: String = "World") -> String {
    // let nameToUse = name ?? "World"
    return "Hello, \(name)"
}

print(hello())
print(hello("Alice"))


struct Year {
    let calendarYear: Int

    var isLeapYear: Bool {
        if calendarYear % 4 == 0 {
            if (calendarYear % 100 == 0) {
                if (calendarYear % 400 == 0) {
                    return true
                } else {
                    return false
                }
            } else {
                return true
            }
        } else {
            return false
        }
    }
}

let year = Year(calendarYear: 1900)
year.isLeapYear

let stringDate = "2011-04-25T00:00:00"

import Foundation
import UIKit

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"

let date = dateFormatter.date(from: stringDate)
let newDate = date?.addingTimeInterval(1000000000.0)


struct Gigasecond {
    let from: Date?

    init?(from stringDate: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        guard let dateObject = dateFormatter.date(from: stringDate) else {
            return nil
        }
        self.from = dateObject
    }
    
    var description: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        let newDate: Date = from!.addingTimeInterval(1000000000.0)
        return dateFormatter.string(from: newDate)
    }
}

let gs = Gigasecond(from: "2011-04-25T00:00:00")?.description
