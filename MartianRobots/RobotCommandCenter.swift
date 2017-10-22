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
            let currLocation = robot.location
            switch instruction {
            case .L:
                robot.turnLeft()
            case .R:
                robot.turnRight()
            case .F:
                let newLocation = robot.forwardLocation()
                if !isLost && !surface.contains(location: newLocation) {

                    // Robot is going to go out of grid
                    // Test if currentLocation is scented
                    // Ignore instruction if scented, otherwise get lost
                    if scentedLocations.contains(where: { (location) -> Bool in
                        location.x == currLocation.x && location.y == currLocation.y
                    }) {
                        continue
                    } else {
                        isLost = true
                        lostLocation = currLocation
                        self.robot.location = newLocation
                    }
                } else {
                    self.robot.location = newLocation
                }
            }

        }

        return lostLocation
    }
}
