import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var arr = [String]()
    var answer = 0
    for (i, j) in zip(want, number) {
        arr.append(contentsOf: Array(repeating: i, count: j))
    }
    arr.sort()
    
    for i in 0...discount.count - 10 {
        if discount[i..<i+10].sorted() == arr { answer += 1 }
    }
    
    return answer
}