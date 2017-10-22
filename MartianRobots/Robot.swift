import Foundation

protocol Robot {
    var location: Location { get set }
    var orientation: Direction { get set }
}

class MartianRobot: Robot {
    var location: Location
    var orientation: Direction

    init(location: Location, orientation: Direction) {
        self.location = location
        self.orientation = orientation
    }
}


struct RobotSequence {
    var robot: Robot
    var instructions: [Instruction]
}
