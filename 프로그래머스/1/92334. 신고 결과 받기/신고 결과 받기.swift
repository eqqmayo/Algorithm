import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var arr = Set(report).map { $0.split(separator: " ").map { String($0) } }
    var dict = Dictionary(grouping: arr) { $0.last }
    var idDict: [String: Int] = [:]
    for id in id_list {
        idDict[id] = 0
    }
    
    for r in dict {
        if r.value.count >= k {
            for id in r.value { idDict[id.first!]! += 1 }
        }
    }
    
    return(id_list.map { idDict[$0]! })
}