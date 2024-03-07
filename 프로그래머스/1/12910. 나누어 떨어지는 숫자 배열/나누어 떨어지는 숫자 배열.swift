func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let answer = arr.sorted().filter { $0 % divisor == 0 }
    return answer == [] ? [-1] : answer
}