func solution(_ s:String) -> String {
    var arr = s.lowercased().map { String($0) }
    
    for i in 0..<arr.count {
        if i == 0 || arr[i - 1] == " " {
            arr[i] = arr[i].uppercased()
        }
    }
    return arr.joined()
}