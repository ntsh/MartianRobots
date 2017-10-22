import XCTest

class RobotTests: XCTestCase {

    var robot :Robot?

    override func setUp() {
        super.setUp()
        let location = Location(x: 2, y: 4)
        let orientation = Direction.N
        robot = MartianRobot(location: location, orientation: orientation)
    }

    func testSetOrientation() {
        robot?.orientation = .W
        XCTAssertTrue(robot?.orientation == .W)
    }

    func testSetLocation() {
        let expectedLocation = Location(x: 2, y: 5)
        robot?.location = expectedLocation
        XCTAssertTrue(robot?.location.x == expectedLocation.x
            && robot?.location.y == expectedLocation.y)
    }
}
