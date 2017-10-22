import XCTest

class RobotTests: XCTestCase {

    var robot :Robot?

    override func setUp() {
        super.setUp()
        let location = Location(x: 2, y: 4)
        let orientation = Direction.N
        robot = MartianRobot(location: location, orientation: orientation)
    }

    func testTurnLeft() {
        robot?.turnLeft()
        XCTAssertTrue(robot?.orientation == .W)
    }

    func testTurnRight() {
        robot?.turnRight()
        XCTAssertTrue(robot?.orientation == .E)
    }

    func testMoveForward() {
        let newLocation = robot?.forwardLocation()
        let expectedLocation = Location(x: 2, y: 5)
        XCTAssertTrue(newLocation?.x == expectedLocation.x
            && newLocation?.y == expectedLocation.y)
    }
}
