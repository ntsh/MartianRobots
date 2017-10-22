import Foundation

print("Hello, World!")

func parseGrid() -> Surface {
    var bounds = readLine()?.components(separatedBy: " ").flatMap { Int($0) }

    guard (bounds?.count)! >= 2 else {
        print("Invalid Input")
        exit(0)
    }

    let endX = bounds?[0]
    let endY = bounds?[1]
    let end = Location(x: endX!, y: endY!)

    let origin = Location(x: 0, y: 0)
    let grid = Surface(origin: origin, bounds: end)
    return grid
}

func parseRobot(_ line: String) -> Robot {
    let position = line.components(separatedBy: " ")
    guard position.count >= 3 else {
        print("Invalid Input")
        exit(0)
    }

    let location = Location(x: Int(position[0])!, y: Int(position[1])!)
    let orientation = Direction(rawValue: position[2])

    return MartianRobot(location: location, orientation: orientation!)
}

func parseInstruction(_ line: String) -> [Instruction] {
    let instructionsString = Array(line.characters)
    let instructions = instructionsString.flatMap { Instruction(rawValue: String($0)) }
    return instructions
}

func parseRobotsSequence() -> [RobotSequence] {
    var robots: [RobotSequence] = []
    while let line = readLine() {
        let robot = parseRobot(line)
        let instruction = parseInstruction(readLine()!)
        _ = readLine() // Flush Empty line

        let sequence = RobotSequence(robot: robot, instructions: instruction)
        robots.append(sequence)
    }
    return robots
}

let grid = parseGrid()
let sequence = parseRobotsSequence()
let app = App(surface: grid, sequence: sequence)
app.run()
