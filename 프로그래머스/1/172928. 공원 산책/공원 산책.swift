import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    var (x, y) = (0, 0)
    var blocked: [[Int]] = []
    
    for (i, str) in park.enumerated() {
        for (j, char) in str.enumerated() {
            if char == "S" { (x, y) = (i, j) }
            if char == "X" { blocked.append([i, j]) }
        }
    }
    
    for route in routes {
        let a = route.split(separator: " ")
        let (direction, n) = (a[0], Int(a[1])!)
        
        switch direction {
        case "N":
            if x - n < 0 || (1...n).contains(where: { i in
                blocked.contains([x - i, y])
            }) { break }
            x -= n
        case "S":
            if x + n > park.count - 1 || (1...n).contains(where: { i in
                blocked.contains([x + i, y])
            }) { break }
            x += n
        case "E":
            if y + n > park[0].count - 1 || (1...n).contains(where: { i in
                blocked.contains([x, y + i])
            }) { break }
            y += n
        case "W":
            if y - n < 0 || (1...n).contains(where: { i in
                blocked.contains([x, y - i])
            }) { break }
            y -= n
        default:
            break
        }
    }
    return [x, y]
}