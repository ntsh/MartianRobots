import XCTest

class DirectionTests: XCTestCase {

    var direction: Direction?

    override func setUp() {
        super.setUp()
        direction = .N
    }

    func testRightDirection() {
        XCTAssertTrue(direction?.right() == .E)
    }

    func testLeftDirection() {
        XCTAssertTrue(direction?.left() == .W)
    }
}
