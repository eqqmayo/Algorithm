import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    if score.count < m { return 0 }
    var arr = score.sorted(by: >)
    var minSum = 0
    for i in 1...arr.count / m {
        minSum += arr[i * m - 1]
    }
    return minSum * m
}