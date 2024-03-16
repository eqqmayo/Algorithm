import Foundation

func solution(_ food:[Int]) -> String {
    var str = ""
    var num = 1
    for i in 1..<food.count {
        str += String(repeating: String(i), count: food[i] / 2)
    }
    return str + "0" + str.reversed()
}