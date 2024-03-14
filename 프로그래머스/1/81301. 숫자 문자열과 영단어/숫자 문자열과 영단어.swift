import Foundation

func solution(_ s:String) -> Int {
    var str = s
    var arr = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]
    for i in 0..<arr.count {
        if str.contains(arr[i]) {
            str = str.replacingOccurrences(of: arr[i], with: String(i))
        }
    }
    return Int(str)!
}