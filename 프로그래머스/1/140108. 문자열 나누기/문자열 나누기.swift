import Foundation

func solution(_ s:String) -> Int {
    var s = s.map { $0 }
    var arr = [Character]()
    var count = 0
    var answer = 0
    
    for i in 0..<s.count {
        if arr == [] || arr.first! == s[i] {
            count += 1
            arr.append(s[i])
        } else {
            count -= 1
            arr.append(s[i])
        }
        if arr != [] && count == 0 {
            arr = []
            answer += 1
        }
        if count > 0 && i == s.count - 1 {
            answer += 1
        }
    }
    return answer
}