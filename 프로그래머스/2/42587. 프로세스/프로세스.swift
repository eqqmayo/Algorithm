import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var (arr, idx) = (priorities, location)
    var answer = 0
    
    while arr != [] {
        var max = arr.max()!
        
        if arr[0] != max {
            arr.append(arr.removeFirst())
            if idx == 0 { idx = arr.count }
        } else {
            answer += 1
            arr.removeFirst()
            if idx == 0 { break }
        }
        idx -= 1
    }
    return answer
}