import Foundation

func solution(_ topping:[Int]) -> Int {
    var older: [Int: Int] = [:]
    var olderSet: Set<Int> = []
    var younger: [Int: Int] = [:]
    var youngerSet: Set<Int> = []
    
    var answer = 0
    
    for i in 0..<topping.count {
        olderSet.insert(topping[i])
        older[i] = olderSet.count
    }
    
    for i in stride(from: topping.count - 1, to: -1, by: -1) {
        youngerSet.insert(topping[i])
        younger[i] = youngerSet.count
        if older[i - 1] == younger[i] { answer += 1 }
    }
    
    return answer
}