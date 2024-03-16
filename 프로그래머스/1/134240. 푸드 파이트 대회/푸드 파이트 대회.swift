import Foundation

func solution(_ food:[Int]) -> String {
    var str = ""
    var num = 1
    for i in 1..<food.count {
        str += String(repeating: String(num), count: food[i] / 2)
        num += 1
    }
    return str + "0" + str.reversed()
}