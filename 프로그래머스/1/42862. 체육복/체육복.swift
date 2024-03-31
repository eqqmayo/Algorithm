import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var lostArr = Set(lost).subtracting(reserve).sorted()
    var reserveArr = Set(reserve).subtracting(lost).sorted()
        
    for r in reserveArr {
        if lostArr.contains(r - 1) {
            let index = lostArr.firstIndex(of: r - 1)!
            lostArr.remove(at: index)
            continue
        }
        if lostArr.contains(r + 1) {
            let index = lostArr.firstIndex(of: r + 1)!
            lostArr.remove(at: index)
        }
    }
    return n - lostArr.count
}