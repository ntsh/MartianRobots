import Foundation

enum Direction: String {
    case N
    case E
    case S
    case W

    func left() -> Direction! {
        switch self {
        case .N:
            return .W
        case .E:
            return .N
        case .S:
            return .E
        case .W:
            return .S
        }
    }

    func right() -> Direction! {
        switch self {
        case .N:
            return .E
        case .E:
            return .S
        case .S:
            return .W
        case .W:
            return .N
        }
    }
}
