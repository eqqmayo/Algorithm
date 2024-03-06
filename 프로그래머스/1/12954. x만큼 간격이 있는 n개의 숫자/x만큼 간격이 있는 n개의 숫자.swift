func solution(_ x:Int, _ n:Int) -> [Int] {
    var arr = [Int]()
    var num = x
    for _ in 1...n {
        arr.append(num)
        num += x
    }
    return arr
}