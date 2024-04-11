import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var answer = 1
    var (x, y) = (a, b)
    while (x + 1) / 2 != (y + 1) / 2 {
        x = (x + 1) / 2
        y = (y + 1) / 2
            answer += 1
    }
    return answer
}