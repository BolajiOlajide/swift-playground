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

enum ColorComponent {
    case rgb
    case hsb
}
