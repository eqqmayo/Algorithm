func solution(_ s: String) -> String {
    let arr = Array(s)
    let mid = arr.count / 2
    
    if arr.count % 2 != 0 {
        return String(arr[mid])
    } else {
        return String(arr[mid - 1...mid])
    }
}