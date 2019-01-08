import Cocoa

// 2.2-2 Exercise
// Concrete solution for selection sort

func selectionSort(_ arr: [Int]) -> [Int] {

    // Early exit
    guard arr.count > 1 else { return arr }

    var arr = arr

    for i in 0..<arr.count - 1 {
        var smallestNumber = arr[i]
        var smallestIndex = i

        // Find the smallest number
        for j in i+1..<arr.count {
            if arr[j] < smallestNumber {
                smallestNumber = arr[j]
                smallestIndex = j
            }
        }

        print("Smallest[\(smallestIndex)] = \(smallestNumber)")

        // Exechange value
        let temp = arr[i]
        arr[i] = smallestNumber
        arr[smallestIndex] = temp
    }

    return arr
}

let input = [5, 3, 2, 2, 6, 7]
let output = selectionSort(input)
print(output)
