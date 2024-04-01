func solution(_ s:String) -> String {
    
    let letters = Array(s)
    var isBeforeBlank = true
    var result: String = ""
    
    for letter in letters {
        result += (isBeforeBlank ? letter.uppercased() : letter.lowercased())
        isBeforeBlank = (letter == " ")
    }
    
    return result
}