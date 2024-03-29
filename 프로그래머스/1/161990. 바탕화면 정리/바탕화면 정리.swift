import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var wallpaper = wallpaper.map { $0.map { String($0) } }
    var lux = 0
    var luy = 50
    var rdx = 0
    var rdy = 0
    
    for i in 0..<wallpaper.count {
        if wallpaper[i].contains("#") {
            lux = i
            break
        }
    }
    for i in 0..<wallpaper.count {
        if wallpaper[i].contains("#") {
            rdx = i + 1
        }
    }
    for i in wallpaper {
        luy = min(luy, i.firstIndex(of: "#") ?? 50)
        rdy = max(rdy, (i.lastIndex(of: "#") ?? 0) + 1)
    }
    return [lux, luy, rdx, rdy]
}