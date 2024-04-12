import Foundation

func solution(_ s:String) -> Int {
    var str = Array(s)
    var answer = 0
    
    func check(_ array:Array<Character>) -> Bool {
        var checkArray = [Character]()
        
        let braces: [Character:Character] = ["{":"}", "[":"]", "(":")"]
        
        for i in array {
            if !checkArray.isEmpty && braces[checkArray.last!] == i  {
                checkArray.removeLast()
            } else {
                checkArray.append(i)
            }
        }
        return checkArray.isEmpty
    }
    for _ in str {
        str.append(str.removeFirst())
        if check(str) {
            answer += 1
        }
    }
    return answer
}