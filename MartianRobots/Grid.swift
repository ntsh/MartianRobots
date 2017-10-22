import Foundation

struct Grid {
    private(set) var start: Location
    private(set) var limit: Location

    init(start: Location, limit: Location) {
        self.start = start
        self.limit = limit
    }

    func contains(location: Location) -> Bool {
        return location.x <= limit.x
            && location.y <= limit.y
            && location.x >= start.x
            && location.y >= start.y
    }
}
