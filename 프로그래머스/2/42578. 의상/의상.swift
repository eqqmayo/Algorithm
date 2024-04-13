import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dict = Dictionary(grouping: clothes) { $0.last! }
    var answer = 1
    for i in dict.values {
        answer *= i.count + 1
    }
    return answer - 1
}