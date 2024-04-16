import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var result = 0
    var visited = Array(repeating: false, count: dungeons.count)
    
    func dfs(_ count: Int, _ left: Int) {
        if result < count { result = count }
        for i in 0..<dungeons.count {
            if !visited[i] && left >= dungeons[i][0] {
                visited[i] = true
                dfs(count + 1, left - dungeons[i][1])
                visited[i] = false
            }
        }
    }
    dfs(0, k)
    return result
}