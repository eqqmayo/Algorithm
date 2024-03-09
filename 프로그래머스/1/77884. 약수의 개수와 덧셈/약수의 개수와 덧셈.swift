import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var squareSum = 0
    for i in left...right {
        if floor(sqrt(Double(i))) == sqrt(Double(i)) {
            squareSum += i
        }
    }
    return (left + right) * (right - left + 1) / 2 - squareSum * 2
}