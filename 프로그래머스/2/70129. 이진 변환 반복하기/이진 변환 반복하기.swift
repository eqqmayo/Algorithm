import Foundation

func solution(_ s:String) -> [Int] {
    var str = s
    var zero = 0
    var one = 0
    var count = 0
    
    while str != "1" {
        for i in str {
            if i == "0" { zero += 1 }
            if i == "1" { one += 1 }
        }
        str = String(one, radix: 2)
        one = 0
        count += 1
    }
    
    return [count, zero]
}