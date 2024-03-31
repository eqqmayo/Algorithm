import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    let today = today.split(separator: ".").map { Int($0)! }
    let (ty, tm, td) = (today[0], today[1], today[2])
    var answer: [Int] = []
    
    var dict: [String: Int] = [:]
    for term in terms {
        let term = term.split(separator: " ").map { String($0) }
        dict[term[0]] = Int(term[1])
    }
    
    for (i, privacy) in privacies.enumerated() {
        let privacy = privacy.split(separator: " ").map { String($0) }
        let (date, kind) = (privacy[0], privacy[1])
        let ymd = date.split(separator: ".").map { Int($0)! }
        var (y, m, d) = (ymd[0], ymd[1], ymd[2])
        
        d += 27
        m +=  dict[kind]! - 1
        if d > 28 { m += 1; d %= 28 }
        if m > 12 { y += m % 12 == 0 ? m / 12 - 1 : m / 12 ; m = m % 12 == 0 ? 12 : m % 12 }
        
        if ty > y || (ty == y && tm > m) || (ty == y && tm == m && td > d) { answer.append(i + 1) }
    }
    return answer
}