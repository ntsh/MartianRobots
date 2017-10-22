import Foundation

struct App {
    let surface: Surface
    let sequence: [RobotSequence]

    func run() {
        var scentLocations = [Location]()

        for robotSequence in sequence {
            var robot = robotSequence.robot
            let instructions = robotSequence.instructions
            var isLost = false

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

                if !surface.contains(location: robot.location) {
                    isLost = true
                    scentLocations.append(location)
                }
            }

            print ("\(robot.location.x) \(robot.location.y) \(robot.orientation)", terminator:"")
            if isLost {
                print(" LOST")
            } else {
                print("")
            }
        }
    }
}
