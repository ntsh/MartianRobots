import XCTest

class RobotTests: XCTestCase {

    var robot :Robot?

    override func setUp() {
        super.setUp()
        let location = Location(x: 2, y: 4)
        let orientation = Direction.North
        robot = MartianRobot(location: location, orientation: orientation)
    }

    func testTurnLeft() {
        robot?.turnLeft()
        XCTAssertTrue(robot?.orientation == .West)
    }

    func testTurnRight() {
        robot?.turnRight()
        XCTAssertTrue(robot?.orientation == .East)
    }

    func testMoveForward() {
        robot?.moveForward()
        let expectedLocation = Location(x: 2, y: 5)
        XCTAssertTrue(robot?.location.x == expectedLocation.x
            && robot?.location.y == expectedLocation.y)
    }
}
