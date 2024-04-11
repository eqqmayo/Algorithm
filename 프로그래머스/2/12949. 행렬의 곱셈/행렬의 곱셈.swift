import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var newArr = [[Int]]()
    for i in 0..<arr2[0].count {
        var new = [Int]()
        for arr in arr2 {
            new.append(arr[i])
        }
        newArr.append(new)
    }
    var outer = [[Int]]()
    for i in arr1 {
        var inner = [Int]()
        for j in newArr {
            var sum = 0
            for (x, y) in zip(i, j) {
                sum += x * y
            }
            inner.append(sum)
        }
        outer.append(inner)
    }
    return outer
}