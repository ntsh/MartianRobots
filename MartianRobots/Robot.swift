import Foundation

protocol Robot {
    var location: Location { get }
    var orientation: Direction { get }

    mutating func turnLeft()
    mutating func turnRight()
    mutating func moveForward()
}

class MartianRobot: Robot {
    private(set) var location: Location
    private(set) var orientation: Direction

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

    func moveForward() {
        switch orientation {
        case .N:
            self.location.incrementY()
        case .E:
            self.location.incrementX()
        case .S:
            self.location.decrementY()
        case .W:
            self.location.decrementX()
        }
    }
}


struct RobotSequence {
    var robot: Robot
    var instructions: [Instruction]
}
