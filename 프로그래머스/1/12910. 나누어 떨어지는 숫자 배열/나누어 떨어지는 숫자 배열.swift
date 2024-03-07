func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var answer = [Int]()
    for i in arr {
        if i % divisor == 0 {
            answer.append(i)
        }
    }
    return answer == [] ? [-1] : answer.sorted()
}