import Foundation

func solution(_ word:String) -> Int {
    var char = "AEIOU".map { String($0) }
    var str = ""
    var arr = [String]()
    
    func dfs() {
        if str.count == 5 { return }
        for i in char {
            str += i
            arr.append(str)
            dfs()
            str.removeLast()
        }
    }
    dfs()
    return arr.firstIndex(of: word)! + 1
}