import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var max = [Int]()
    var min = [Int]()
    for i in sizes {
        max.append(i.max()!)
        min.append(i.min()!)
    }
    return max.max()! * min.max()!
}
