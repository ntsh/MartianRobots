import XCTest

class SurfaceTests: XCTestCase {

    var grid: Surface?

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let start = Location(x: 0, y: 0)
        let limit = Location(x: 5, y: 9)
        self.grid = Surface(origin: start, bounds: limit)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testContains() {
        let location = Location(x: 2, y: 5)
        XCTAssertTrue((self.grid?.contains(location: location))!)
    }

    func testContainsBoundary() {
        let location = Location(x: 5, y: 9)
        XCTAssertTrue((self.grid?.contains(location: location))!)
    }

    func testNegativeGrid() {
        let gridNegative = Surface(origin: Location(x:0, y:0), bounds: Location(x: -2, y: -3))
        let location = Location(x: -1, y: -1)
        XCTAssertTrue(gridNegative.contains(location: location))
    }
}
