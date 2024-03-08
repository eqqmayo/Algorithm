func solution(_ s:String) -> String {
    let arr = s.map { String($0) }
    let index = arr.count / 2
    if arr.count % 2 != 0 {
        return arr[Int(index)]
    } else {
        return arr[index - 1] + arr[index]
    }
}