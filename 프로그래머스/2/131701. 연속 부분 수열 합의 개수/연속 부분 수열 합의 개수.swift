import Foundation

func solution(_ elements:[Int]) -> Int {
    var arr = elements
    arr.append(contentsOf: elements)
    var result = [Int]()
    
    for i in 0..<elements.count {
        var sum = 0
        for j in i..<i + elements.count {
            sum += arr[j]
            result.append(sum)
        }
    }
    return Set(result).count
}