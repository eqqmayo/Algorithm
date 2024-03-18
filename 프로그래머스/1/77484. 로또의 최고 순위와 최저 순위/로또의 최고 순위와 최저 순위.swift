import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var zero = 0
    var min = 0
    let rank = [0: 6, 1: 6, 2: 5, 3: 4, 4: 3, 5: 2, 6: 1]
    for num in lottos {
        if win_nums.contains(num) { min += 1 }
        if num == 0 { zero += 1 }
    }
    var max = min + zero
    return [rank[max]!, rank[min]!]
}