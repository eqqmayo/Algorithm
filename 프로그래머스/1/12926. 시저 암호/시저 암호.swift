func solution(_ s:String, _ n:Int) -> String {
    var ascii = s.map { Int(UnicodeScalar(String($0))!.value) }
    var result = ""
    for i in ascii {
        if i == 32 {
            result += String(UnicodeScalar(i)!)
        } else if 65...90 ~= i {
            if i+n > 90 {
                result += String(UnicodeScalar(i-26+n)!)
            } else {
                result += String(UnicodeScalar(i+n)!)
            }
        } else {
            if i+n > 122 {
                result += String(UnicodeScalar(i-26+n)!)
            } else {
                result += String(UnicodeScalar(i+n)!)
            }
        }
    }
    return result
}