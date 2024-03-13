import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var result = 0
    for i in 0...t.count-p.count {
        result += String(Array(t)[i..<i+p.count]) <= p ? 1 : 0
    }
    return result
}