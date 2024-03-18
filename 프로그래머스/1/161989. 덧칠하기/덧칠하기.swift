import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var result = 0
    var next = 0
    for i in 0..<section.count {
        if section[i] > next {
            result += 1
            next = section[i] + m - 1
        }
    }
    return result
}