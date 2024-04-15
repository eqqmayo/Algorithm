import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var arr = [Int]()
    
    for (i, j) in zip(progresses, speeds) {
        arr.append((100 - i) % j == 0 ? (100 - i) / j : (100 - i) / j + 1)
    }
    
    var present = arr[0]
    var count = 0
    var answer = [Int]()
    
    for k in 0..<arr.count {
        if arr[k] <= present {
            count += 1
        } else {
            answer.append(count)
            count = 1
            present = arr[k]
        }
        if k == arr.count - 1 { answer.append(count) }
    }
    return answer
}