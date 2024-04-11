import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let a = (brown + 4) * (brown + 4) - 16 * (brown + yellow)
    let x = (brown + 4 + Int(sqrt(Double(a)))) / 4
    return [x, (brown + yellow) / x]
}