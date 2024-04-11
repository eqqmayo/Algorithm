import Foundation

func solution(_ citations:[Int]) -> Int {
    var ans = 0
    for i in 1...citations.count {
        if citations.filter({ $0 >= i }).count >= i {
            ans = i
        }
    }
    return ans
}