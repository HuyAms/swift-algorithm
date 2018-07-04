//: Playground - noun: a place where people can play

import UIKit

/*
 * The selection sort is easy to understand but it performs slow as O(n^2) and it is worse than insertion sort but better than bubble sort. Finding the lowest element in the rest of the array is slow
 */


//Selection Sort
func selectionSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    
    var a = array
    
    for x in 0 ..< a.count - 1 {
        var lowestIndex = x
        for y in x + 1 ..< a.count {
            if a[y] < a[lowestIndex] {
                lowestIndex = y
            }
        }
        
        if x != lowestIndex {
            a.swapAt(x, lowestIndex)
        }
    }
    
    return a
}

//TEST
let list = [1, 2, -4, -6, 7, 8, 10]
selectionSort(list)
