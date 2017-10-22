import Foundation

extension Int {

    /**
        Returns true if number is between start and end
        e.g. 2.isBetween(start: 1, end: 4) = true
        e.g. -2.isBetween(start:-1, end: -4) = true
     */
    func isBetween(start: Int, end: Int) -> Bool {
        return (self >= start) == (self <= end)
    }
}
