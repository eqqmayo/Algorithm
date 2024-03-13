import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var result = 0
    for i in 1...t.count-p.count+1 {
        result += String(Array(t)[i-1...i+p.count-2]) <= p ? 1 : 0
    }
    return result
}