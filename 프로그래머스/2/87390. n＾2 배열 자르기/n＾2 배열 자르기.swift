import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var result = [Int]()
    for i in Int(left) + 1...Int(right) + 1 {
        var row = i % n == 0 ? i / n : i / n + 1
        result.append(i % n == 0 ? n : i % n <= row ? row : i % n)
    }
    return result
}