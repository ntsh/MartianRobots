import XCTest

class NumbersUtilsTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    func testInBetween() {
        let num = 5
        XCTAssertTrue(num.isBetween(start: 2, end: 6))
    }

    func testInBetweenBoundary() {
        let num = 10
        XCTAssertTrue(num.isBetween(start: 0, end: 10))
    }

    func testInBetweenNegativeNumbers() {
        let num = -2
        XCTAssertTrue(num.isBetween(start: -1, end: -3))
    }

    func testIsNotInBetween() {
        let num = 4
        XCTAssertFalse(num.isBetween(start: 3, end: 1))
    }

    func testIsNotInBetweenNegativeNumbers() {
        let num = -4
        XCTAssertFalse(num.isBetween(start: -2, end: -3))
    }
}
