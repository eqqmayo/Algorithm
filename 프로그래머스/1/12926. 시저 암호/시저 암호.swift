func solution(_ s:String, _ n: Int) -> String {
    var asciiArr = s.utf8.map { Int($0) }
    var result = ""
    for i in 0..<asciiArr.count {
        switch asciiArr[i] {
        case 65...90:
            asciiArr[i] = (asciiArr[i] + n - 65) % 26 + 65
        case 97...122:
            asciiArr[i] = (asciiArr[i] + n - 97) % 26 + 97
        default:
            break
        }
    }
    for ascii in asciiArr {
        result += String(UnicodeScalar(ascii)!)
    }
    return result
}