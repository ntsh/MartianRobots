import Foundation

struct RobotCommandCenter {

    var robot: Robot

    init(robot: Robot) {
        self.robot = robot
    }

    // Executes the instructions for robot movement. Returns location where the robot is lost
    mutating func execute(instructions: [Instruction], surface: Surface, scentedLocations: [Location]) -> Location? {
        var isLost = false
        var lostLocation: Location?

        for instruction in instructions {
            let location = robot.location
            switch instruction {
            case .L:
                robot.turnLeft()
            case .R:
                robot.turnRight()
            case .F:
                robot.moveForward()
            }

            if !isLost && !surface.contains(location: robot.location) {
                isLost = true
                lostLocation = location
            }
        }

        return lostLocation
    }
}
