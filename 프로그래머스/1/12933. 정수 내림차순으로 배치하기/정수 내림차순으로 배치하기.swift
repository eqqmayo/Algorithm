import Foundation

func solution(_ n:Int64) -> Int64 {
    var str = ""
    let arr = String(n).map { String($0) }.sorted(by: >)
    for i in arr {
        str += i
    }
    return Int64(str)!
}
