import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var zero = lottos.filter { $0 == 0 }.count
    var correct = lottos.filter { win_nums.contains($0) }.count

    return [min(7-(correct+zero), 6), min(7-correct, 6)]
}