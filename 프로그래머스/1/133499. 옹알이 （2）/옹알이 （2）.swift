import Foundation

func solution(_ babbling:[String]) -> Int {
    var count = 0
    for word in babbling {
        var word = word
        for (i, j) in ["aya", "ye", "woo", "ma"].enumerated() {
            word = word.replacingOccurrences(of: j, with: "\(i)")
        }
        if !word.contains("00") && !word.contains("11") && !word.contains("22") && !word.contains("33") && Int(word) != nil { count += 1 }
    }
    return count
}