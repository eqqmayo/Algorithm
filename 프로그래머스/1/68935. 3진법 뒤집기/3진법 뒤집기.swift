import Foundation

func solution(_ n:Int) -> Int {
    var reversed = String(String(n, radix: 3).reversed())
    return Int(reversed, radix: 3)!
}