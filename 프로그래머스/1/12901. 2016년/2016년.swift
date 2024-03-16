func solution(_ a:Int, _ b:Int) -> String {
    let months = [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let days = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]
    let ans = (months[0..<a].reduce(-1, +) + b) % 7
    return days[ans]
}