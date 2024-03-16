import Foundation

func solution(_ s:String) -> [Int] {
    var arr = Array(s)
    var result = [Int]()
    for i in 0..<arr.count {
        var ans = -1
        for j in 0..<i {
            if arr[i] == arr[j] { ans = i-j }
        }
        result.append(ans)
    }
    return result
}

