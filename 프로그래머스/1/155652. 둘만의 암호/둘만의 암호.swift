import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    var skip = skip.map { String($0) }
    var arr = "abcdefghijklmnopqrstuvwxyz".map { String($0) }.filter { !skip.contains($0) }
    var answer = ""
    
    for i in s {
        answer += arr[arr.index(arr.firstIndex(of: String(i))!, offsetBy: index) % arr.count]
    }
    return answer
}