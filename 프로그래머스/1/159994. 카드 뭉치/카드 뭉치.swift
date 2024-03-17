import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var arr1 = [Int]()
    var arr2 = [Int]()
    
    for word in goal {
        if cards1.contains(word) {
            arr1.append(cards1.firstIndex(of: word)!)
        } else {
            arr2.append(cards2.firstIndex(of: word)!)
        } 
    }
    
    if arr1 == Array(0..<arr1.count) && arr2 == Array(0..<arr2.count) { return "Yes" }
    return "No"
}