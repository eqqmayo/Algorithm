import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    if n < a { return 0 }
    return n / a * b + solution(a, b, (n / a * b) + (n % a))
}