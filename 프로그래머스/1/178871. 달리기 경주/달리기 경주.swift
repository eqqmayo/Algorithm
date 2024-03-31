import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var result = players
    var dict: [String: Int] = [:]
  
    for (i, player) in players.enumerated() {
        dict[player] = i
    }
    for call in callings {
        let i = dict[call]!
        result.swapAt(i - 1, i)
        dict[result[i - 1]] = i - 1
        dict[result[i]] = i
    }
    return result
}