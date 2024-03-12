import Foundation

func solution(_ s:String) -> String {
    var words = s.components(separatedBy: " ")
    for i in 0..<words.count {
        var word = words[i].map { String($0) }
        for j in 0..<word.count {
            if j % 2 == 0 {
                word[j] = word[j].uppercased()
            } else {
                word[j] = word[j].lowercased()
            }
        }
        words[i] = word.joined()
    }
   return words.joined(separator: " ")
}