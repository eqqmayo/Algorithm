import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    var route = [[String]]()
    var start = [0,0]
    var dict = ["E": 1, "S": 1, "W": -1, "N": -1]
    
    for i in 0..<park.count {          
        let arr = Array(park[i]).map{String($0)}
        if arr.contains("S") {
            start[0] = i
            for j in 0..<arr.count {
                if arr[j] == "S" {
                    start[1] = j
                }
            }
        }
        route.append(arr)
    }
    
    for i in 0..<routes.count {       
        var arr = routes[i].split(separator: " ").map{ String($0)}
        var move = dict[arr[0]]! * Int(arr[1])!
        let rowIdx = route[0].count - 1
        let colIdx = route.count - 1
        var check = [String]()
        
        if arr[0] == "E" || arr[0] == "W" {
            var moved = start[1] + move
            if moved < 0 || moved > rowIdx {    
                continue
            }
            if arr[0] == "E" {             
                for j in start[1]...moved {
                check.append(route[start[0]][j])
                }
            } else {
                for j in moved...start[1] {
                check.append(route[start[0]][j])
                }
            }
            if check.contains("X") {           
                continue
            } else {
                start = [start[0], moved]
            }
        }
        
        if arr[0] == "S" || arr[0] == "N" {
            var moved = start[0] + move
            if moved < 0 || moved > colIdx {    
                continue
            }
            if arr[0] == "S" {                
                for j in start[0]...moved {
                check.append(route[j][start[1]])
                }
            } else {
                for j in moved...start[0] {
                check.append(route[j][start[1]])
                }
            }
            if check.contains("X") {            
                continue
            } else {
                start = [moved, start[1]]
            }
        }
        
    }
    return start
}