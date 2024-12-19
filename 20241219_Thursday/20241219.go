// Leetcode: 769. Max Chunks To Make Sorted
// https://leetcode.com/problems/max-chunks-to-make-sorted/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Max Chunks
// To Make Sorted.
// Memory Usage: 3.9 MB, less than 6.25% of Go online submissions for Max
// Chunks To Make Sorted.
// 2024.12.19 Daily Challenge.

package main

import (
// "fmt"
)

func maxChunksToSorted(arr []int) int {
	// Based on Leetcode's solution:
	// https://leetcode.com/problems/max-chunks-to-make-sorted/solution/
	n := len(arr)
	ans := 0
	psum := 0  // Prefix sum
	spsum := 0 // Sorted prefix sum
	for i := 0; i < n; i += 1 {
		psum += arr[i]
		spsum += i
		if psum == spsum {
			ans += 1
		}
	}
	return ans
}
