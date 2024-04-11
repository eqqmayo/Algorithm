func solution(_ arr:[Int]) -> Int {
    func gcd(_ a: Int, _ b: Int) -> Int {
        if b == 0 { return a }
        return gcd(b, a % b)
    }

    func lcm(_ a: Int, _ b: Int) -> Int {
        return a * b / gcd(a, b)
    }
    
    var result = arr[0]
    for i in arr {
        result = lcm(result, i)
    }
    return result
}