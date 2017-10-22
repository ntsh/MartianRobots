import Foundation

enum Direction: Int {
    case North = 0
    case East
    case South
    case West

    func left() -> Direction! {
        var leftValue = self.rawValue - 1
        leftValue = leftValue.modulo(by: Direction.count())
        return Direction(rawValue: leftValue)
    }

    func right() -> Direction! {
        var rightValue = self.rawValue + 1
        rightValue = rightValue.modulo(by: Direction.count())
        return Direction(rawValue: rightValue)
    }

    private static func count() -> Int {
        // TODO: Hardcoded for now. 
        // Refactor it to return count of directions dynamically
        return 4
    }
}
