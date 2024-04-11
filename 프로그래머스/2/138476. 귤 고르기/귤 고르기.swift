import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var dict = [Int: Int]()
    var sum = 0
    var ans = 0
    for i in tangerine {
        if dict[i] == nil { dict[i] = 1 }
        else { dict[i]! += 1 }
    }
    for i in dict.values.sorted(by: >) {
        sum += i
        ans += 1
        if sum >= k { break }
    }
    return ans
}