import XCTest

class LocationTests: XCTestCase {

    var location: Location?

    override func setUp() {
        super.setUp()
        self.location = Location(x: 3, y: 10)
    }

    func testIncrementX() {
        self.location?.incrementX()
        XCTAssertTrue(location?.x == 4)
    }

    func testDecrementX() {
        self.location?.decrementX()
        XCTAssertTrue(location?.x == 2)
    }

    func testIncrementY() {
        self.location?.incrementY()
        XCTAssertTrue(location?.y == 11)
    }

    func testDecrementY() {
        self.location?.decrementY()
        XCTAssertTrue(location?.y == 9)
    }
}
