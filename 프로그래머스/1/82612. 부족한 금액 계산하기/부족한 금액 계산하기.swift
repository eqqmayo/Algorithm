import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer:Int64 = -1
    answer = Int64(count * (count + 1) / 2 * price - money)
    return answer > 0 ? answer : 0
}