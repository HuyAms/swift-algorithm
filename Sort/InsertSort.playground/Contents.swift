//: Playground - noun: a place where people can play

import UIKit

/*
 * O(n^2) -> The worst case performance because there are two nested loops in this function
 * Insertion sort is really fast if the array is largely sorted.
 */

// Use swap
func insertionSort(_ array: [Int]) -> [Int] {
    var a = array
    for x in 1..<a.count {
        var y = x
        while y > 0 && a[y] < a[y-1] {
            a.swapAt(y - 1, y)
             y -= 1
        }
    }
    return a
}

//TEST
let list = [10, -1, 3, 4, 24, 5, 55, 3, 24, -5]
insertionSort(list)

//No more swap
func insertionSortNoSwap(_ array: [Int]) -> [Int] {
    var a = array
    for x in 1..<a.count {
        var y = x
        let temp = a[y]
        while y > 0 && temp < a[y-1] {
            a[y] = a[y - 1]
            y -= 1
        }
        a[y] = temp
    }
    return a
}

insertionSortNoSwap(list)
