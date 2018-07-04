//: Playground - noun: a place where people can play

import UIKit

/*
 * When given an array, quicksort() splits it up into three parts based on a 'pivot'
 * There is no guarantee that partitioning keeps the elements in the same relative order.
 * The only guarantee is that to the left of the pivot are all the smaller elements and to the right are all the larger
 * elements. Partitioning can change the original order of equal elements, quicksort does not produce a stable sort
 * (unlike merge sort)
 
 * With bad pivots, the performance of quicksort can be quite horrible, O(n^2)
 * But if you choose good pivots on average, for example using a random number generator, the exptected running time
 * becomes O(nlogn)
 */

func quicksort<T: Comparable>(_ a: [T]) -> [T] {
    guard a.count > 1 else { return a }
    
    let pivot = a[a.count/2]
    
    let less = a.filter {
        $0 < pivot
    }
    
    let equal = a.filter {
        $0 == pivot
    }
    
    let greater = a.filter {
        $0 > pivot
    }
    
    return quicksort(less) + equal + quicksort(greater)
}

//TEST
let list = [1, 2, 5, 3, -4, -3, 7]
quicksort(list)
