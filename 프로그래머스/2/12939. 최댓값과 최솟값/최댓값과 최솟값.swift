func solution(_ s:String) -> String {
    var arr = s.split(separator: " ").map { Int($0)! }.sorted()
    return String(arr.first!) + " " + String(arr.last!)
}