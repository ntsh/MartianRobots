import Foundation

protocol Robot {
    var location: Location { get }
    var orientation: Direction { get }

    mutating func turnLeft()
    mutating func turnRight()
    mutating func moveForward()
}

struct MartianRobot: Robot {
    private(set) var location: Location
    private(set) var orientation: Direction

    mutating func turnLeft() {
        self.orientation = self.orientation.left()
    }

    mutating func turnRight() {
        self.orientation = self.orientation.right()
    }

    mutating func moveForward() {
        switch orientation {
        case .North:
            self.location.incrementY()
        case .East:
            self.location.incrementX()
        case .South:
            self.location.decrementY()
        case .West:
            self.location.decrementX()
        }
    }
}
