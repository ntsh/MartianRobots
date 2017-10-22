import Foundation

struct Surface {
    private(set) var origin: Location
    private(set) var bounds: Location

    init(origin: Location, bounds: Location) {
        self.origin = origin
        self.bounds = bounds
    }

    func contains(location: Location) -> Bool {
        return location.x.isBetween(start: origin.x, end: bounds.x)
            && location.y.isBetween(start: origin.y, end: bounds.y)
    }
}
