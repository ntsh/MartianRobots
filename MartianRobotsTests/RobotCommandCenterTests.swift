import XCTest

class RobotCommandCenterTests: XCTestCase {

    var surface: Surface?

    override func setUp() {
        super.setUp()
        surface = Surface(origin: Location(x:0, y:0), bounds: Location(x: 5, y: 3))
    }

    func testExample() {
        let robot = MartianRobot(location: Location(x: 3, y: 2), orientation: .N)
        let instructions: [Instruction] = [.F,.R,.R,.F,.L,.L,.F,.F,.R,.R,.F,.L,.L]
        var commandCenter = RobotCommandCenter(robot: robot)
        let scentedLocations: [Location] = []
        let lostLocation = commandCenter.execute(instructions: instructions, surface: surface!, scentedLocations: scentedLocations)
        XCTAssert(lostLocation!.x == 3)
        XCTAssert(lostLocation!.y == 3)
        XCTAssert(robot.location.x == 3)
        XCTAssert(robot.location.y == 3)
        XCTAssert(robot.orientation == .N)
    }
}
