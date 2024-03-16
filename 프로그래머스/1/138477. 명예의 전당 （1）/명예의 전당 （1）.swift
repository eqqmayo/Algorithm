import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var arr = [Int]()
    var result = [Int]()
    for i in 0..<score.count {
        if i < k { arr.append(score[i]) }
        else {
            if arr.last! < score[i] {
                arr[k-1] = score[i]
            }
        }
        arr.sort(by: >)
        result.append(arr.last!)
    }
    return result
}