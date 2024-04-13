import Foundation

func solution(_ s:String) -> Int {
    var rotate = Array(s)
    var count = 0
    
    func correct(_ arr: [Character]) -> Bool {
        var stack = [Character]()
        for i in arr {
            if i == "[" || i == "{" || i == "(" {
                if stack == [] || stack.last == "[" || stack.last == "{" || stack.last == "(" {
                    stack.append(i)
                }
            } else if i == "]" && stack.last == "[" {
                stack.removeLast()
            } else if i == "}" && stack.last == "{" {
                stack.removeLast()
            } else if i == ")" && stack.last == "(" {
                stack.removeLast()
            } else { return false }
        }
        return stack == [] ? true : false
    }
    
    for _ in s {
        rotate.append(rotate.removeFirst())
        if correct(rotate) { count += 1 }
    }
    
    return count
}