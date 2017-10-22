import Foundation

extension Direction {
    func getDirectionMove() -> DirectionMove {
        switch self {
        case .N:
            return NorthDirectionMove()
        case .E:
            return EastDirectionMove()
        case .S:
            return SouthDirectionMove()
        case .W:
            return WestDirectionMove()
        }
    }
}
