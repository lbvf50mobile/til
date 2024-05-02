// Leetcode: 2441. Largest Positive Integer That Exists With Its Negative.
// https://leetcode.com/problems/largest-positive-integer-that-exists-with-its-negative/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 3 ms, faster than 100.00% of Go online submissions for Largest
// Positive Integer That Exists With Its Negative.
// Memory Usage: 5.1 MB, less than 88.46% of Go online submissions for Largest
// Positive Integer That Exists With Its Negative.
// 2024.05.02 Daily Challenge.

package main

// The range of the possible absolute values is small. From 1 till 1000. Thus
// it is possible to create a slice and fill it. Or it is possible to create
// two slices positive and negative. A bool slices. Fill them if the number is
// meet. Then start moving from right to left and return the first occurrence
// where positive and negative indices store true.

func findMaxK(nums []int) int {
	pv := make([]bool, 1001) // Positive.
	ng := make([]bool, 1001) // Negative.
	for _, v := range nums {
		if v >= 0 {
			pv[v] = true
		} else {
			ng[-v] = true
		}
	}
	for i := 1000; i > 0; i -= 1 {
		if pv[i] && ng[i] {
			return i
		}
	}
	// Found nothing.
	return -1
}
