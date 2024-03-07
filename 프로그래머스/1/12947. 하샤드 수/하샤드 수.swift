import Foundation

func solution(_ x:Int) -> Bool {
    let num = String(x).map { Int(String($0))! }.reduce(0, +)
    return x % num == 0 ? true : false
}