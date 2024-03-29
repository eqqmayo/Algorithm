import Foundation

func solution(_ s:String) -> Int {
    var x: Character? = nil
    var count = 0
    var answer = 0
    
    for i in s {
        if x == nil {
            x = i
            count += 1
            answer += 1
            continue
        }
        count += x == i ? 1 : -1
        if count == 0 { x = nil }
    }
    return answer
}