import Foundation

class RobotCommandFactory {

    // This method will return a closure function to be executed on a robot
    static func getCommand(instruction: Instruction) -> ((Robot) -> Position) {

        func turnRight(robot: Robot) -> Position {
            return Position(location: robot.location, orientation: robot.orientation.right())
        }

        func turnLeft(robot: Robot) -> Position {
            return Position(location: robot.location, orientation: robot.orientation.left())

        }

        func moveForward(robot: Robot) -> Position {
            return Position(location: robot.forwardLocation(), orientation: robot.orientation)
        }

        switch instruction {
        case .R:
            return turnRight
        case .L:
            return turnLeft
        case .F:
            return moveForward
        }
    }
}
