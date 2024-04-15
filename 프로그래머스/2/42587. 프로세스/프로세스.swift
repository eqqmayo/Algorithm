import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var (arr, idx) = (priorities, location)
    var answer = 0
    
    while arr != [] {
        var max = arr.max()!
        idx -= 1
        if arr[0] != max {
            arr.append(arr.removeFirst())
            if idx == -1 { idx = arr.count - 1 }
        } else {
            answer += 1
            arr.removeFirst()
            if idx == -1 { break }
        }
    }
    return answer
}