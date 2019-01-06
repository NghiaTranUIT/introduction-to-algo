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
        print("key = \(key)")
        var i = j - 1
        print(arr)
        while i >= 0 && arr[i] < key {
            arr[i + 1] = arr[i]
            print("arr[i + 1] = \(arr[i])")
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
