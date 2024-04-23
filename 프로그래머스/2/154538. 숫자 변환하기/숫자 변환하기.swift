import Foundation

func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
    var answer = 0
    var set = Set([x])
    
    while true {
        if set.contains(y) { return answer }
        var opSet = Set<Int>()
        
        for i in set {
            if i + n <= y {
                opSet.insert(i + n)
            }
            if i * 2 <= y {
                opSet.insert(i * 2)
            }
            if i * 3 <= y {
                opSet.insert(i * 3)
            }
        }
        set = opSet
        answer += 1
        if set.isEmpty { return -1 }
    }
    return answer
}
