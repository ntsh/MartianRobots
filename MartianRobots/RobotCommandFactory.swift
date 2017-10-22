import Foundation

class RobotCommandFactory {

    // This method will return a closure function to be executed on a robot
    static func getCommand(instruction: Instruction) -> ((Robot) -> Position) {

        func turnRight(robot: Robot) -> Position {
            let directionMove: DirectionMove = robot.orientation.getDirectionMove()
            return Position(location: robot.location, orientation: directionMove.getRight())
        }

        func turnLeft(robot: Robot) -> Position {
            let directionMove: DirectionMove = robot.orientation.getDirectionMove()
            return Position(location: robot.location, orientation: directionMove.getLeft())

        }

        func moveForward(robot: Robot) -> Position {
            let directionMove: DirectionMove = robot.orientation.getDirectionMove()
            return Position(location: directionMove.getForwardLocation(location: robot.location), orientation: robot.orientation)
        }

        func makeUTurn(robot: Robot) -> Position {
            var directionMove: DirectionMove = robot.orientation.getDirectionMove()
            var orientation = directionMove.getRight()
            directionMove = orientation.getDirectionMove()
            return Position(location: robot.location, orientation: directionMove.getRight())
        }

        switch instruction {
        case .R:
            return turnRight
        case .L:
            return turnLeft
        case .F:
            return moveForward
        case .U:
            return makeUTurn
        }
    }
}
