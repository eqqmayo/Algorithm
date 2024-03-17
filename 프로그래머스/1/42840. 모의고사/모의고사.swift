import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let arr1 = Array(repeating: [1, 2, 3, 4, 5], count: 2000).flatMap { $0 }
    let arr2 = Array(repeating: [2, 1, 2, 3, 2, 4, 2, 5], count: 1250).flatMap { $0 }
    let arr3 = Array(repeating: [3, 3, 1, 1, 2, 2, 4, 4, 5, 5], count: 1000).flatMap { $0 }
    
    var result = [Int]()
    var (a, b, c) = (0, 0, 0)
    
    for i in 0..<answers.count {
        if arr1[i] == answers[i] { a += 1 }
        if arr2[i] == answers[i] { b += 1 }
        if arr3[i] == answers[i] { c += 1 }
    }
    
    if max(a, b, c) == a { result.append(1) }
    if max(a, b, c) == b { result.append(2) }
    if max(a, b, c) == c { result.append(3) }
    
    return result
}