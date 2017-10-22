import XCTest

class DirectionTests: XCTestCase {

    var direction: Direction?

    override func setUp() {
        super.setUp()
        direction = .North
    }

    func testRightDirection() {
        XCTAssertTrue(direction?.right() == .East)
    }

    func testLeftDirection() {
        XCTAssertTrue(direction?.left() == .West)
    }
}
