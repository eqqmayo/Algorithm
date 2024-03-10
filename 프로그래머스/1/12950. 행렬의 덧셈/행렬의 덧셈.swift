func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var arr = arr1
    for i in 0..<arr.count {
        for j in 0..<arr[i].count {
            arr[i][j] = arr1[i][j] + arr2[i][j]
        }
    }
    return arr
}