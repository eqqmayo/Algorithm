import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result = [Int]()
    for n in 0..<commands.count {
        let inner = commands[n]
        let (i, j, k) = (inner[0]-1, inner[1]-1, inner[2]-1)
        result.append(array[i...j].sorted()[k])
    }
    return result
}