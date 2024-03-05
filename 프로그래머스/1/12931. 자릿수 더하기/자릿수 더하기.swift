import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    for i in String(n) {
        result += Int(i)
    }
    return result
}