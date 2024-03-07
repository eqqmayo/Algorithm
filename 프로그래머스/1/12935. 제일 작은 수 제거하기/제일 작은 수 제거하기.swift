func solution(_ arr:[Int]) -> [Int] {
    var ans = arr
    ans.remove(at: arr.firstIndex(of: arr.min()!)!)
    return ans.isEmpty ? [-1] : ans
}