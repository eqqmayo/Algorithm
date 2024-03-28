import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var answer = ""
    var dict: [String: Int] = ["R": 0, "T": 0, "C": 0, "F": 0, "J":0, "M": 0, "A": 0, "N": 0]
    
    for (survey, choice) in zip(survey, choices) {
        switch choice {
        case 1:
            dict[String(survey.first!)]! += 3
        case 2:
            dict[String(survey.first!)]! += 2
        case 3:
            dict[String(survey.first!)]! += 1
        case 5:
            dict[String(survey.last!)]! += 1
        case 6:
            dict[String(survey.last!)]! += 2
        case 7:
            dict[String(survey.last!)]! += 3
        default:
            break
        }
    }
    
    for i in [("R", "T"), ("C", "F"), ("J", "M"), ("A", "N")] {
        answer += dict[i.0]! >= dict[i.1]! ? i.0 : i.1
    }
    return answer
}
    