import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    
    func isPrime(_ num: Int) -> Bool {
        if num < 2 { return false }
        if num > 3 {
            for i in 2...Int(sqrt(Double(num))) {
                if num % i == 0 { return false }
            }
        }
        return true
    }
    
    var arr = String(n, radix: k).split(separator: "0").map { Int($0)! }
    return arr.filter { isPrime($0) }.count
}