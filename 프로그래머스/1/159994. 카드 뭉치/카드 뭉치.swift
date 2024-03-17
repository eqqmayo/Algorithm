import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var arr1 = [Int]()
    var arr2 = [Int]()
    var (i, j) = (0, 0)
    
    for word in goal {
        if cards1[i] == word {
            i += i < cards1.count-1 ? 1 : 0
        } else if cards2[j] == word {
            j += j < cards2.count-1 ? 1 : 0
        } else {
            return "No"
        }
    }
    return "Yes"
}