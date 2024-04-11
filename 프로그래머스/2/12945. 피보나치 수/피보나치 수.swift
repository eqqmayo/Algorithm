func solution(_ n:Int) -> Int {
    var arr = [0, 1]

    for i in 2...n {
        arr.append((arr[i-2] + arr[i-1]) % 1234567)
    }
    return arr[n]
}