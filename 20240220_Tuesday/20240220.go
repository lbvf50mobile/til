// Leetcode: 268. Missing Number.
// https://leetcode.com/problems/missing-number/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 17 ms, faster than 34.40% of Go online submissions for Missing
// Number.
// Memory Usage: 6 MB, less than 94.90% of Go online submissions for Missing
// Number.
// 2024.02.20 Daily Challenge.

package main

func missingNumber(nums []int) int {
	tmp := make([]bool, len(nums)+1)
	for _, v := range nums {
		tmp[v] = true
	}
	for i, v := range tmp {
		if !v {
			return i
		}
	}
	panic("Unreachable.")
}
