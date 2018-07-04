## Bubble sort

O(1) extra space 

Time complexity:
- worst: O(n2) comparisons and swaps
- best: O(n) when nearly sorted
not stable
adaptive - O(n) time when nearly sorted

Use cases:
Similar to insertion sort (many properties are the same for insertion and bubble sort) - when the data is nearly sorted (since it's adaptive) or when the problem size is small (because it has low memory overhead)

## Selection sort

O(1) extra space 

O(n^2) comparisons (for worst and best)
O(n) swaps
not stable
not adaptive

Use cases:
Since selection sort minimizes the number of swaps, it's useful when the cost of swapping items is high.

## Insertion sort

O(1) extra space 

Time complexity:
- worst: O(n^2) comparisons and swaps
- best: O(n) when nearly sorted
stable
adaptive - O(n) time when nearly sorted

Use cases:
When the data is nearly sorted (since it's adaptive) or when the problem size is small (because it has low memory overhead)

## Quick sort

O(n) extra space

O(n^2) time (for few unique keys), but typically O(n·log(n)) if recursion is balanced
not stable
not adaptive

Use cases:
Quicksort is in place and has low overhead. If a stable sort is not necessary. It has a higher worstcase time complexity than merge sort (if pivot is not in center of array)
