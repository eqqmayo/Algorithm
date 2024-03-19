import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var dictX: [String: Int] = [:]
    var dictY: [String: Int] = [:]
    
    X.forEach { dictX[String($0), default: 0] += 1 }
    Y.forEach { dictY[String($0), default: 0] += 1 }
    
    var result = ""
    
    for (k, v) in dictX.sorted { $0.key > $1.key } {
        if dictY[k] != nil {
            result += String(repeating: k, count: min(v, dictY[k]!))
        }
    }
    if result == "" { return "-1" }
    if Int(result) == 0 { return "0" }
    return result
}