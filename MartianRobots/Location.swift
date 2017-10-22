import Foundation

struct Location {
    private(set) var x: Int = 0
    private(set) var y: Int = 0

    public init(x: Int, y:Int) {
        self.x = x
        self.y = y
    }

    mutating public func incrementX() {
        self.x += 1
    }

    mutating public func decrementX() {
        self.x -= 1
    }

    mutating public func incrementY() {
        self.y += 1
    }

    mutating public func decrementY() {
        self.y -= 1
    }
}
