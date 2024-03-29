import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var km = keymap.map { $0.map { String($0) } }
    var tgt = targets.map { $0.map { String($0) } }
    var answer: [Int] = []
    
    for target in tgt {
        if !Set(target).isSubset(of: Set(km.flatMap { $0 })) {
            answer.append(-1)
            continue
        }
        
        var sum = 0
        for t in target {
            var a = km.sorted { $0.firstIndex(of: t) ?? 100 < $1.firstIndex(of: t) ?? 100 }.first!
            sum += a.firstIndex(of: t)! + 1
        }
        answer.append(sum)
    }
    return answer
}