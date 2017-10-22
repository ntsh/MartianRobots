import Foundation

struct App {
    let surface: Surface
    let sequence: [RobotSequence]

    func run() {
        var scentLocations = [Location]()

        for robotSequence in sequence {
            let robot = robotSequence.robot
            let instructions = robotSequence.instructions

            var commandCenter = RobotCommandCenter(robot: robot)
            let lostLocation = commandCenter.execute(instructions: instructions, surface: surface, scentedLocations: scentLocations)

            var lostString = ""
            if lostLocation != nil {
                scentLocations.append(lostLocation!)
                lostString = "LOST"

            }
            print ("\(robot.location.x) \(robot.location.y) \(robot.orientation) \(lostString)")

        }
    }
}
