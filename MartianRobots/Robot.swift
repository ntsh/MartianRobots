import Foundation

protocol Robot {
    var location: Location { get set }
    var orientation: Direction { get set }

    mutating func turnLeft()
    mutating func turnRight()
    func forwardLocation() -> Location
}

class MartianRobot: Robot {
    var location: Location
    var orientation: Direction

    init(location: Location, orientation: Direction) {
        self.location = location
        self.orientation = orientation
    }

    func turnLeft() {
        self.orientation = self.orientation.left()
    }

    func turnRight() {
        self.orientation = self.orientation.right()
    }

    func forwardLocation() -> Location {
        var newLocation: Location
        switch orientation {
        case .N:
            newLocation = Location(x: self.location.x, y: self.location.y + 1)
        case .E:
            newLocation = Location(x: self.location.x + 1, y: self.location.y)
        case .S:
            newLocation = Location(x: self.location.x, y: self.location.y - 1)
        case .W:
            newLocation = Location(x: self.location.x - 1, y: self.location.y)
        }
        return newLocation
    }
}


struct RobotSequence {
    var robot: Robot
    var instructions: [Instruction]
}
