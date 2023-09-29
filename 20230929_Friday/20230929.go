// Leetcode: 896. Monotonic Array.
// https://leetcode.com/problems/monotonic-array
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 140 ms, faster than 55.32% of Go online submissions for Monotonic
// Array.
// Memory Usage: 8.5 MB, less than 89.36% of Go online submissions for Monotonic
// Array.
// 2023.09.29 Daily Challenge.
package main

func isMonotonic(nums []int) bool {
	x := nums
	up, down := false, false
	n := len(x)
	for i := 1; i < n; i += 1 {
		if up && down {
			return false
		}
		if x[i-1] > x[i] {
			down = true
		}
		if x[i-1] < x[i] {
			up = true
		}
	}
	if up && down {
		return false
	}
	return true
}
