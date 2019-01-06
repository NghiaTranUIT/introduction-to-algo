import Cocoa

func insertionSort(arr: [Int]) -> [Int] {

    var arr = Array(arr)

    // Early exit
    // if arr contains only a single item
    guard arr.count > 1 else {
        return arr
    }

    // insertion sort
    for j in 1..<arr.count {
        let key = arr[j]
        var i = j - 1
        while i >= 0 && arr[i] < key {
            arr[i + 1] = arr[i]
            i = i - 1
        }
        arr[i + 1] = key
    }

    return arr
}

// Test
let arr1 = [31, 41, 59, 26, 41, 58]
let sort1 = insertionSort(arr: arr1)
print(sort1)

// Boundary of inputs
let arr2: [Int] = []
let arr3 = [1]

print(insertionSort(arr: arr2))
print(insertionSort(arr: arr3))
