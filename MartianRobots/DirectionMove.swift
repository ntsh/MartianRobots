import Foundation

protocol DirectionMove {
    func getRight() -> Direction
    func getLeft() -> Direction
    func getForwardLocation(location: Location) -> Location
}

struct NorthDirectionMove: DirectionMove {
    func getForwardLocation(location: Location) -> Location {
        return Location(x: location.x, y: location.y + 1)
    }

    func getLeft() -> Direction {
        return Direction.W
    }

    func getRight() -> Direction {
        return Direction.E
    }
}

struct EastDirectionMove: DirectionMove {
    func getForwardLocation(location: Location) -> Location {
        return Location(x: location.x + 1, y: location.y)
    }

    func getLeft() -> Direction {
        return Direction.N
    }

    func getRight() -> Direction {
        return Direction.S
    }
}

struct SouthDirectionMove: DirectionMove {
    func getForwardLocation(location: Location) -> Location {
        return Location(x: location.x, y: location.y - 1)
    }

    func getLeft() -> Direction {
        return Direction.E
    }

    func getRight() -> Direction {
        return Direction.W
    }
}

struct WestDirectionMove: DirectionMove {
    func getForwardLocation(location: Location) -> Location {
        return Location(x: location.x - 1 , y: location.y)
    }

    func getLeft() -> Direction {
        return Direction.S
    }

    func getRight() -> Direction {
        return Direction.N
    }
}
