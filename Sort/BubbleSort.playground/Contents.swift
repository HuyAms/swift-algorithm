//: Playground - noun: a place where people can play

import UIKit

//Bubble sort is a sorting algorithm that is implemented by starting in the beginning of the array and swapping the first
//two elements only if the first element is greater than the second element. This comparison is then moved onto the next
//pair and so on and so forth

//Average O(n^2)
//Worst O(n^2)

func bubbleSort(arr: [Int]) -> [Int] {
    var a = arr
    var lastIndex = a.count - 1

    
    while lastIndex >= 0 {
        for i in 0..<lastIndex{
            if a[i] > a[i+1] {
                a.swapAt(i, i+1)
            }
        }

        lastIndex -= 1
    }
    
    return a
}


//TEST
let list = [-1, 4, 3, 5, 8 ,9, 0]
bubbleSort(arr: list)
