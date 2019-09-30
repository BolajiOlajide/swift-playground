let week: [String] = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

func dayType(for day: String) -> String {
    switch day {
    case "Saturday", "Sunday": return "Weekend"
    case "Monday", "Tuesday", "Wednesday", "Thursday", "Friday": return "Weekday"
    default: return "This isn't a valid day in the westerm calendar"
    }
}

func isNotificationMuted(on day: String) -> Bool {
    return day == "Weekend"
}

let result = dayType(for: week[4])
let isMuted = isNotificationMuted(on: result)

// create an enum
enum Day {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

enum DayType {
    // you can also declare all the cases on one line
    case weekend, weekday
}

func dayType(for day: Day) -> DayType {
    // you can omit the enum type as the compiler can infer that they belong to the Day enum
    switch day {
    case .saturday, .sunday:
        return .weekend
    case .monday, .tuesday, .wednesday, .thursday, .friday:
        return .weekday
    // no need for a default case because with enums all possible cases are taken care of
    }
}

func isNotificationMuted(on type: DayType) -> Bool {
    switch type {
    case DayType.weekend:
        return true
    case DayType.weekday: return false
    }
}

// exercise
class Point {
    var x: Int
    var y: Int

    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

enum Direction {
    case left
    case right
    case up
    case down
}

class Robot {
    var location: Point

    init() {
        self.location = Point(x: 0, y: 0)
    }

    func move(_ direction: Direction) {
        // Enter your code below
        switch (direction) {
            case .left: self.location.x -= 1
            case .right: self.location.x += 1
            case .up: self.location.y += 1
            case .down: self.location.y -= 1
        }
    }
}

let robot = Robot()
robot.move(Direction.up)
print(robot.location.y)

// end of exercise
import UIKit

enum ColorComponent {
//    case rgb(Float, Float, Float, Float) // this works too
    case rgb(red: Float, green: Float, blue: Float, alpha: Float)
    case hsb(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
    
    func color() -> UIColor {
        switch self {
        case .rgb(let red, let green, let blue, let alpha):
            return UIColor(_colorLiteralRed: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
        case .hsb(let hue, let saturation, let brightness, let alpha):
            return UIColor(hue: hue/360.0, saturation: saturation/100.0, brightness: brightness/100.0, alpha: alpha)
        }
    }
}

ColorComponent.rgb(red: 61.0, green: 120.0, blue: 198.0, alpha: 1.0).color()

// exercise
enum BarButton {
    case done(title: String)
    case edit(title: String)
  
  func button() -> UIBarButtonItem {
    switch self {
      case .done(let title):
        return UIBarButtonItem(title: title, style: .done, target: nil, action: nil)
      case .edit(let title):
        return UIBarButtonItem(title: title, style: .plain, target: nil, action: nil)
    }
  }
}

let done = BarButton.done(title: "Save")
let button = done.button()

let someButton = UIBarButtonItem(title: "A Title", style: .plain, target: nil, action: nil)
